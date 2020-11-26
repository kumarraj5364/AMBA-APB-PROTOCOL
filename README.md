# AMBA-APB-PROTOCOL
###        Raj Kumar Laldev 
 Advance VLSI Lab   
   Silicon institute of technology Bhubaneswar,India  
       rajbihar5364@gmail.com
 # Table of Contents
 - [Introduction of AMBA](#Introduction-of-AMBA)
-  [AMBA Bus architecture](#AMBA-Bus-Architechture)
- [Types of AMBA Bus](#Types-of-AMBA-Bus)
- [Introduction of AMBA APB](#Introduction-of-AMBA-APB)
- [APB Block Diagram](#APB-Block-Diagram)
- [Signal specification of APB](#signal-specification-of-APB)
- [Design and operating states of APB](#Design-and-operating-states-of-APB)
  * [Write operation](#Write-operation)
  * [Read operation](#Read-operation)
-  [Simulation results of APB design](#Simulation-results-of-APB-design)
-  [Conclusion](#Conclusion)
- [Acknowledgement](#Acknowledgement)
- [References](#References)

# Introduction of AMBA
- Advanced microcontroller bus architecture (AMBA) is an architecture that is widely used in system-on-chip designs, which are found on chip buses. 
- The AMBA specification standard is used for designing high-level embedded microcontrollers. 
- AMBA’s major objective is to provide technology independence and to encourage modular system design. Furthermore, it strongly encourages the development of reusable peripheral devices while minimizing silicon infrastructure.
-  Today, AMBA is widely used on a range of ASIC and SoC parts including applications processors used in modern portable mobile devices like smartphones.

AMBA was introduced by ARM in 1996. The first AMBA buses were the Advanced System Bus (ASB) and the Advanced Peripheral Bus (APB).

 In its second version, AMBA 2 in 1999, ARM added AMBA High-performance Bus (AHB) that is a single clock-edge protocol.

  In 2003, ARM introduced the third generation, AMBA 3, including Advanced eXtensible Interface (AXI) to reach even higher performance interconnect and the Advanced Trace Bus (ATB) as part of the CoreSight on-chip debug and trace solution.                       
  In 2010, the AMBA 4 specifications were introduced starting with AMBA 4 AXI4, then      
  in 2011,  extending system-wide coherency with AMBA 4 AXI Coherency Extensions (ACE).    
  In 2013, the AMBA 5 Coherent Hub Interface (CHI) specification was introduced, with a re-designed high-speed transport layer and features designed to reduce congestion.


  