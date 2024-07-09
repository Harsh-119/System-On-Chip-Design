;------------------------------------------------------------------------------------------------------
; Design and Implementation of an AHB Interrupt Mechanism  
; 1)Input characters from keyboard (UART) and output to the terminal (using interrupt)
; 2)A counter is incremented from 1 to 10 and displayed on the 7-segment display (using interrupt)
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

        				DCD		GPIO_Handler
        				DCD		UART_Handler
        				DCD		Timer_Handler
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



                LDR     R1, =0xE000E400           ;Interrupt Priority Register
                LDR     R0, =0x00008000           ;Priority: GPIO: 0x00, UART: 0x40, GPIO: 0x80
                STR     R0, [R1]
				
                LDR     R1, =0xE000E100           ;Interrupt Set Enable Register
                LDR     R0, =0x00000007           ;Enable interrupts for UART and timer and GPIO
                STR     R0, [R1]
		

				;Configure the timer
				
				LDR 	R1, =0x52000000		;timer load value register
				LDR 	R0, =0x02FAF080		;=50,000,000 (system tick frequency)
				STR		R0,	[R1]			
				LDR 	R1, =0x52000008		;timer control register
				MOVS	R0, #0x03			;prescaler=1, enable timer, reload mode
				STR		R0,	[R1]

                LDR     R5, =0x00000030		;counting-up counter, start from '0' (ascii=0x30)  

AGAIN						
				B		AGAIN		


				ENDP
;------------------------------------------------------------------------------------------------------
Timer_Handler   PROC
                EXPORT Timer_Handler
                PUSH    {R0,R1,R2,LR}       ;PUSH CONTENTS OF REGISTERS TO THE STACK, ENSURES ISR CAN SAFELY MODIFY THE REGISTER CONTENTS ON THE STACK

				LDR 	R1, =0x5200000c		;CLEARS THE AHB TIMER INTERRUPT
				MOVS	R0, #0x01
				STR		R0, [R1]

				LDR 	R1, =0x50000000		;VGA BASE ADDRESS
				STR		R5, [R1]
				ADDS	R5, R5, #0x01
				CMP		R5,	#0x3A
				BNE		NEXT
				LDR 	R1, =0x52000008		;TIMER CNTRL REGISTER ADDRESS
				MOVS	R0, #0x00			;STOPS THE TIMER ONCE IT REACHES 9
				STR		R0,	[R1]				

NEXT			MOVS	R0, #' '
				STR		R0, [R1]
				
                POP     {R0,R1,R2,PC}                    ;return
                ENDP
;------------------------------------------------------------------------------------------------------
UART_Handler    PROC
                EXPORT UART_Handler

                PUSH    {R0,R1,R2,LR}
                LDR     R1, =0x51000000               ;UART ADDRESS
                LDR     R0, [R1]                      ;RECEIVES DATA FROM THE UART
                STR     R0, [R1]                      ;WRITES DATA TO UART

                POP     {R0,R1,R2,PC}
                ENDP
;------------------------------------------------------------------------------------------------------				
GPIO_Handler    PROC
                EXPORT GPIO_Handler

                PUSH    {R0,R1,R2,LR}
				LDR 	R1, =0x53000004    ;GPIO direction address (read or write)
				MOVS 	R0, #0x0000        ;read value
				STR 	R0, [R1]			;store read value to gpio direction address
				LDR 	R2, =0x53000000    ;GPIO data address
				LDR		R3, [R2]		   ;load the sw value 1(on) or 0(off) stored in GPIO data address
				MOVS 	R0, #0x0001		   ;write value
				STR 	R0, [R1]
				STR		R3, [R2]
			   

                POP     {R0,R1,R2,PC}
                ENDP

				ALIGN 		4					 ; Align to a word boundary

		END               