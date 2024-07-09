# Introduction to System on Chip Design

- This repository is based on [Introduction to System on Chip Design Education Kit by Arm](https://www.arm.com/resources/education/education-kits/introduction-to-soc).
- Keil MDK is a complete software development environment for Arm Cortex-M based microcontroller devices. It is used to generate a code.hex file which can be used to program the SoC using Assembly or C code.
- The projects explore System-on-Chip design and programming a simple SoC, Cortex-M0, implemented on an FPGA.
- The FPGA Board used &rarr; **XC7A100Tcsg324-1**






## Topics Explored
1. Arm-Based System-on-Chip Design
1. The Arm Cortex-M0 Processor Architecture
1. AMBA 3 AHB-Lite Bus Architecture
1. AHB VGA Peripheral
1. AHB UART Peripheral 
1. Timer, GPIO and 7-Segment Peripherals
1. Interrupt Mechanisms 
1. Programming an SoC using C Language
1. Application Programming Interface (API)
1. Combining all topics to create a 2 player snake game
1. Creating a novel math guessing game


## Update Bitstream Guide

The ```update_bitstream.tcl``` file allows the user to bypass resynthesis, reimplementation and bitstream regeneration whenever a new ```code.hex``` file is generated. When run, the ```update_bitstream.tcl``` file will repopulate the BRAM with the new content in the ```code.hex```, thus saving time. If the run is successful, a new bitstream ```reflash.bit``` will be created in the same directory as the update_bitstream files. The new bitstream now contains the updated code from Keil and can be used to program the FPGA.


- Some nice ***tcl commands*** for this project:
######
    cd [get_property DIRECTORY [current_project]]
######
    source update_bitstream.tcl


Required Files to run the above command are: 

•	[update_bitstream.tcl](Three/update_bitstream.tcl)

•	[update_bitstream_header.tcl](Three/update_bitstream_header.tcl)

•	code.hex file which is generated when code is compiled in Keil MDK

---
