# AHB VGA Implementation

This lab focuses on implementing a simple SoC, the Coretx-M0 Processor, AHB-Lite Bus and AHB peripherals such as Program Memory and VGA on the Nexys A7 FPGA. The processor, bus interface, on-chip memory and peripheral hardware are written in Verilog. The program that will be used to instruct the Cortex-M0 processor is written in assembly language and will be used to access the VGA peripheral, using Keil to generate a code.hex file which will be copied to the FPGA project directory. Text and images are displayed on the VGA display.

- The main goals are to:
  - Modify the assembly code to draw 4 geometrical shapes
  - Display some text
  - Display a different language in the text region

# Results

<img width="379" alt="image" src="https://github.com/Harsh-119/277a/assets/148488786/6a4ae69d-3267-4c8a-8f6d-16ab4f89671c">

- Image of 4 geometrical shapes and Name (these changes were done by modifying assembly code)


<img width="338" alt="image" src="https://github.com/Harsh-119/277a/assets/148488786/d641255f-48f6-4cff-8767-b7cb090f068b">

- To display the modified letter the original ‘H’ value has been edited so that the Japanese Kanji Character for ‘Harsh’ is drawn out and mapped. Upon the ASCII entry for the English letter ‘H’ the output will be 苛. (changes made to font_rom.v)

---

<img width="800" alt="image" src="https://github.com/Harsh-119/277a/assets/148488786/d5a1e8ff-4dda-4bd6-968b-e0a92559a3bf">

The VGA Peripheral that has been implemented is used as an interface for the AHB bus, and the output is displayed on a VGA monitor. The implemented peripheral has an AHB bus interface which the processor uses to control the VGA.
 
The interface is used to generate a synchronization signal, this diagram demonstrates how the DATA, ADDR and Control signals go into the interface and drive the physical pins. The Verilog file contains the logic to generate the synchronization signals, horizontal and vertical pixel counter and video disable signal for the target resolution. The horizontal sync signal, HS, scans from the entire display from left to right it has a down period for the traceback. The vertical sync, VS, monitors the tracer and when it is at the bottom right of the screen it resets the position to the top. These two scans occur throughout the whole process and allow images to be formed on the screen. 

The BRAM is used to store data for the Image buffer and Text Console. It is implemented as memory. The AHB memory peripheral is represented in Verilog, which allows program code to be loaded from the 'code.hex' file. This code can be used for simulation or implementation of the SoC on an FPGA board. As a result, the Text Console is able to have the Alphabet pre-loaded using the font_rom.v file.








