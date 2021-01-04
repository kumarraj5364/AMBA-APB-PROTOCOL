// Code your design here
module AMBA_APB(P_clk,P_rst,P_addr,P_selx,P_enable,P_write,P_wdata,P_ready,P_slverr,P_rdata);
  //input configration 
  input P_clk;
  input P_rst;
  input [31:0]P_addr;
  
  input P_selx;
  input P_enable;
  input P_write;
  input [31:0]P_wdata;
  
  //output configration
  output reg P_ready;
  output reg  P_slverr;
  output reg [31:0]P_rdata;
  //memory decleration
  reg [31:0]mem[31:0];
  //state declaration communication
  parameter [1:0] idle=2'b00;
  parameter [1:0] setup=2'b01;
  parameter [1:0] access=2'b10;
  
  //state declaration of present and next 
  reg [1:0] present_state,next_state;
  
  always @(posedge P_clk) begin
    if(P_rst) present_state <= idle;
    else
      present_state <= next_state;
  end
  always @(*) begin
  //next_state =present_state;
  case (present_state)
    idle:begin
      if (P_selx   & !P_enable) 	
				next_state = setup;
      P_ready=0;
    end

    setup:begin if (!P_enable | !P_selx) 
						next_state = idle; 
              else begin
						next_state =access;
                       
                if(P_write ==1) begin
                  mem[P_addr]= P_wdata;
                  P_ready=1;
                  P_slverr=0;
                   end
                 else begin
                   P_rdata=mem[P_addr];
                   P_ready=1;
                   P_slverr=0;
                 end
               end
    end
    access :begin
      if (!P_enable | !P_selx) begin
					    next_state = idle;
                        P_ready =0;
             end
    end
	endcase 
end
endmodule