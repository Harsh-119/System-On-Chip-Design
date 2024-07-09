# AHB UART Implementation

This lab will focus on implementing an AHB UART peripheral and writing a simple program for the processor to communicate with a PC or laptop.
The program targeted at the Cortex-M0 processor is written in assembly language and will be used to access the UART peripheral.

# Results

- Changing Parity from 38400 to 19200
- Adding Parity Bit
- Sending Files via UART (.txt files) and being able to display on VGA


---

<img width="600" alt="image" src="https://github.com/Harsh-119/277a/assets/148488786/ccdbdb4b-6ac9-4651-b48a-288bb6d74081">

- The UART transmitter reads data in the form of bytes from the transmitter FIFO and converts single-byte data to sequential bits.
- It also sends bits to the TX pin; it is clocked at a fixed rate which is provided by the baud generator.
- The UART receiver receives the sequential bits from the RX pin using the clock generated from the baud generator.
-  It reassembles the bits to a single byte. And finally, writes the received byte to the receiver FIFO.
-  The UART FIFO is used to temporally hold/buffer the data that is to be sent or the data that has been received. 
























