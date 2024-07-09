;;------------------------------------------------------------------------------------------------------Sol
; Design and Implementation of an AHB timer, a GPIO peripheral, and a 7-segment display peripheral  
; 1)Display text string: "Group1" on VGA.
; 2)Input data from switches and output them to LEDs;
; 3)Display the timer value to the 7-segment display.
;------------------------------------------------------------------------------------------------------


; Vector Table Mapped to Address 0 at Reset

						PRESERVE8
                		THUMB

        				AREA	RESET, DATA, READONLY	  			; First 32 WORDS is VECTOR TABLE
        				EXPORT 	__Vectors
					
__Vectors		    	DCD		0x00003FFC
        				DCD		Reset_Handler
        				DCD		0  			
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD 	0
        				DCD		0
        				DCD		0
        				DCD 	0
        				DCD		0
        				
        				; External Interrupts
						        				
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
        				DCD		0
              
                AREA |.text|, CODE, READONLY
;Reset Handler
Reset_Handler   PROC
                GLOBAL Reset_Handler
                ENTRY

				;Write "Group1" to the text console and the UART
				
				;VGA Base to display Data Via VGA
				;UART Base to display DATA via UART interface
				;Write character to R0
				;Store to R1 and R2
				
				LDR 	R1, =0x50000000		;VGA BASE
				LDR 	R2, =0x51000000		;UART BASE
				MOVS	R0, #'G'
				STR		R0, [R1]
				STR		R0, [R2]

				LDR 	R1, =0x50000000		;VGA BASE
				LDR 	R2, =0x51000000		;UART BASE
				MOVS	R0, #'R'
				STR		R0, [R1]
				STR		R0, [R2]

				LDR 	R1, =0x50000000		;VGA BASE
				LDR 	R2, =0x51000000		;UART BASE
				MOVS	R0, #'O'
				STR		R0, [R1]
				STR		R0, [R2]
				
				LDR 	R1, =0x50000000		;VGA BASE
				LDR 	R2, =0x51000000		;UART BASE
				MOVS	R0, #'U'
				STR		R0, [R1]
				STR		R0, [R2]

				LDR 	R1, =0x50000000		;VGA BASE
				LDR 	R2, =0x51000000		;UART BASE
				MOVS	R0, #'P'
				STR		R0, [R1]
				STR		R0, [R2]
				
				LDR 	R1, =0x50000000		;VGA BASE
				LDR 	R2, =0x51000000		;UART BASE
				MOVS	R0, #'1'
				STR		R0, [R1]
				STR		R0, [R2]
				
				;Configure the timer
				
				LDR 	R1, =0x52000000		;Base Addr, for timer load value register
				LDR 	R0, =0xFFFFFFFF		;End addr. load value
				STR		R0,	[R1]			
				LDR 	R1, =0x52000008		;timer control value register
				MOVS	R0, #0x09		;set prescaler, reload mode, start timer
				STR		R0,	[R1]
				

AGAIN			
				;Read from switch, and output to LEDs
				
				LDR 	R1, =0x53000004		;GPIO direction base register
				MOVS	R0, #00				;direction input
				STR		R0,	[R1]
				
				LDR 	R1, =0x53000000		;GPIO data base register
				LDR		R2, [R1]			;input data from the switch
				
				LDR 	R1, =0x53000004		;change direction to output
				MOVS	R0, #01
				STR		R0,	[R1]			

				LDR 	R1, =0x53000000		;output to LED
				STR		R2,	[R1]
				

				;;Read the current timer value, and output to 7-segments
				;;;;;;;;;;;;;;;LEFT TO DO;
				
				LDR 	R1, =0x52000004		;timer current value register
				LDR		R3,	[R1]
				LSRS	R3,	R3, #24			;choose the higher 16 bits

				
				MOVS	R0,	R3				;display the 1st digit
				LDR 	R2, =0x0F
				ANDS    R0, R0, R2
				LDR 	R1, =0x54000000		;Base addr. for 7 segment
				STR		R0, [R1]			;Writing to 7-segment


				LSRS	R0,	R3, #4			;display the 2nd digit
				LDR 	R2, =0x0F
				ANDS    R0, R0, R2
				LDR 	R1, =0x54000004
				STR		R0, [R1]
				
				
				
				LSRS	R0,	R3, #8			;display the 3rd digit
				LDR 	R2, =0x0F
				ANDS    R0, R0, R2
				LDR 	R1, =0x54000008
				STR		R0, [R1]
				
				
				LSRS	R0,	R3, #12			;display the 4th digit
				LDR 	R2, =0x0F
				ANDS    R0, R0, R2
				LDR 	R1, =0x5400000C
				STR		R0, [R1]					
			
				
				B		AGAIN		


				ENDP

				ALIGN 		4					 ; Align to a word boundary

		END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
   