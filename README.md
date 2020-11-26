# AMBA-APB-PROTOCOL
###        Raj Kumar Laldev 
 Advance VLSI Lab   
   Silicon institute of technology Bhubaneswar,India  
       rajbihar5364@gmail.com
 # Table of Contents 
- [Introduction of AMBA](#Introduction-of-AMBA)  
- [AMBA Bus architecture](#AMBA-Bus-Architechture)   
  * [Types of AMBA Bus](#Types-of-AMBA-Bus)
- [Advanced Peripheral Bus](#Advanced-Peripheral-Bus)
  * [APB Block Diagram](#APB-Block-Diagram)
  * [Signal specification of APB](#signal-specification-of-APB)
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


  # AMBA Bus architecture
  - AMBA is an open specification that specifies a strategy on the management of the functional blocks that     sort system on chip (SoC) architecture. 
  - It is a high-speed, high-bandwidth bus that supports multimaster bus management to get the most out of    system performance.
  - AMBA specifications are able to maximize the use of system bus bandwidth during dead time. After        defining a common backbone for SoC modules, it enhances a reusable design methodology. 
  - This system has emerged as the defacto standard for IP library progress and SoC interconnection.

    ![Alt](Images/img1.jpg)

  - This is development of embedded microcontroller products with one or more CPUs or signal processors. 
  -  This is highly reusable peripheral appropriate for full-custom, standard cell and gate array technologies. 
  -  It provides a road-map for advanced cached CPU cores and the development of peripheral libraries to minimize the silicon infrastructure required to support efficient on-chip.   
  An AMBA is having backbone bus AMBA AHB or AMBA ASB. It sustains external memory bandwidth, on which the CPU, on-chip memory and other Direct Memory Access (DMA) devices abide. This bus provides a high-bandwidth interface between the elements that are involved in the majority of transfers. Also it is a bridge to the lower bandwidth APB.

 ## Types of AMBA Bus

 Five interfaces are defined within the AMBA specification: 
-   Advanced system bus (ASB)
-   Advanced peripheral bus (APB)
-   Advanced high-performance bus (AHB)
-   Advanced extensible interface (AXI)
-   Advanced trace bus (ATB)

# Advanced Peripheral Bus
- The Advanced Peripheral Bus (APB) is part of the Advanced Micro  controller Bus Architecture (AMBA)  .
-  APB is optimized for minimal power consumption and reduced  interface  complexity.
- The AMBA APB should be used to interface to any peripherals which are  low bandwidth and do not require the  high performance of a pipelined bus  interface.
- The AMBA APB appears as a local secondary bus that is encapsulated as  a single AHB or ASB slave  device.
- AMBA APB provides the basic peripheral macro cell communications infrastructure as a secondary bus from the  higher bandwidth pipelined main system bus. It consist of interfaces which are memory-mapped registers.

