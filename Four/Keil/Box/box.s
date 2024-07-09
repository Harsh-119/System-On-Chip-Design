;------------------------------------------------------------------------------------------------------
; Design and Implementation of an AHB VGA Peripheral
; 1)Display text string: "TEST" on VGA. 
; 2)Change the color of the four corners of the image region.
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

;Write "TEST" to the text console

				
				LDR 	R1, =0x50000000
				MOVS	R0, #'H'
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000
				MOVS	R0, #'A'
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000
				MOVS	R0, #'R'
				STR		R0, [R1]
				
				LDR 	R1, =0x50000000
				MOVS	R0, #'S'
				STR		R0, [R1]				
				
				LDR 	R1, =0x50000000
				MOVS	R0, #'H'
				STR		R0, [R1]
				






;Write four white dots to four corners of the frame buffer


								
;==========================================================================================================				

;==========================================================================================================				
;				LDR 	R1, =0x50000004
;				LDR		R0, =0xFF
;				STR		R0, [R1]
;				
;				LDR 	R1, =0x50000190
;				LDR		R0, =0xFF
;				STR		R0, [R1]
;		
;				LDR 	R1, =0x5000EE04
;				LDR		R0, =0xFF
;				STR		R0, [R1]

;				LDR 	R1, =0x5000EF90
;				LDR		R0, =0xFF
;				STR		R0, [R1]
				
;				LDR 	R1, =0x50000004  ;Initial pixel address
;				LDR		R0, =0xFF ; WHITE PIXEL
;				ADDS 	R1,R1,#0x80
;				ADDS 	R1,R1,#0x80
;				ADDS 	R1,R1,#0x80
;				ADDS 	R1,R1,#0x80
;				STR		R0, [R1]
;				
;				;Second row starting dot 
;				LDR 	R1, =0x50000204
;				LDR		R0, =0xFF
;				STR		R0, [R1]				
				
;				;third row starting dot 
;				LDR 	R1, =0x50000404
;				LDR		R0, =0xFF
;				STR		R0, [R1]
				
;				
;				;Dot start 4th
;				LDR 	R1, =0x50000604
;				LDR		R0, =0xFF
;				STR		R0, [R1]
				
				;some row right side
;				LDR 	R1, =0x50000B90
;				LDR		R0, =0xFF
;				STR		R0, [R1]

;==========================================================================================================
		
				LDR  R0, =0xFF
				LDR  R1, =0x50000004  ; Start address
				LDR  R2, =0x50000190  ; End address
LOOP_TOP		STR R0, [R1]
				ADDS R1, R1, #4    ; Increment the address by 4 bytes for the next iteration
				CMP  R1, R2        ; Compare the current address with the end address
				BLE  LOOP_TOP    ; Repeat the loop if the current address is less than or equal to the end address
				

				;THIS MAKES A LINE AT TOP (C TO D)
				LDR  R0, =0xFF
				LDR  R1, =0x5000EE04  ; Start address
				LDR  R2, =0x5000EF90  ; End address
LOOP_BOT		STR R0, [R1]
				ADDS R1, R1, #4    ; Increment the address by 4 bytes for the next iteration
				CMP  R1, R2        ; Compare the current address with the end address
				BLE  LOOP_BOT    ; Repeat the loop if the current address is less than or equal to the end address


				;THIS MAKES A LINE AT TOP (C TO D)
				LDR  R0, =0xFF
				;LDR  R1, =0x50000F04  ; Start address -----> This makes a smaller box 
				LDR R1, = 0x50000804
				LDR  R2, =0x50000F90  ; End address
LOOP_TH			STR R0, [R1]
				ADDS R1, R1, #4    ; Increment the address by 4 bytes for the next iteration
				CMP  R1, R2        ; Compare the current address with the end address
				BLE  LOOP_TH    ; Repeat the loop if the current address is less than or equal to the end address



				LDR 	R1, =0x5000011c  ;Initial pixel address
				LDR 	R2, =0x40 ;loop counter for vertical line
LOOP_Box1			LDR		R0, =0xFF ; WHITE PIXEL
				STR		R0, [R1]
				ADDS 	R1,R1,#0x80
				ADDS 	R1,R1,#0x80
				ADDS 	R1,R1,#0x80
				ADDS 	R1,R1,#0x80
				SUBS 	R2,R2,#1
				BNE LOOP_Box1
				

				LDR 	R2, =0x3F ;LOOP COUNTER
LOOP_Box2			LDR		R0, =0xFF ; WHITE PIXEL
				STR		R0, [R1]
				SUBS 	R1,R1,#4
				SUBS 	R2,R2,#1
				BNE LOOP_Box2			

				LDR 	R2, =0x40 ;LOOP COUNTER
LOOP_Box3			LDR		R0, =0xFF ; WHITE PIXEL
				STR		R0, [R1]
				SUBS 	R1,R1,#0x80
				SUBS 	R1,R1,#0x80
				SUBS 	R1,R1,#0x80
				SUBS 	R1,R1,#0x80
				SUBS 	R2,R2,#1
				BNE LOOP_Box3


				LDR 	R1, =0x50000004  ;Initial pixel address
				LDR 	R2, =0x5000EE04 ;loop counter for vertical line
LOOPV			LDR		R0, =0xFF ; WHITE PIXEL
				STR		R0, [R1]
				ADDS 	R1,R1,#0x80
				SUBS 	R2,R2,#1
				BNE LOOPV
				

;==========================================================================================================


;==========================================================================================================
;;		Scuffed 3 maybe 4 shaped 
;				LDR  R0, =0xFF
;				LDR  R1, =0x50000004  ; Start address
;				LDR  R2, =0x50000190  ; End address
;LOOP_TOP		STR R0, [R1]
;				ADDS R1, R1, #4    ; Increment the address by 4 bytes for the next iteration
;				CMP  R1, R2        ; Compare the current address with the end address
;				BLE  LOOP_TOP    ; Repeat the loop if the current address is less than or equal to the end address
;				

;				;THIS MAKES A LINE AT TOP (C TO D)
;				LDR  R0, =0xFF
;				LDR  R1, =0x5000EE04  ; Start address
;				LDR  R2, =0x5000EF90  ; End address
;LOOP_BOT		STR R0, [R1]
;				ADDS R1, R1, #4    ; Increment the address by 4 bytes for the next iteration
;				CMP  R1, R2        ; Compare the current address with the end address
;				BLE  LOOP_BOT    ; Repeat the loop if the current address is less than or equal to the end address





;				LDR 	R1, =0x50000004  ;Initial pixel address
;				LDR 	R2, =0x5000EE04 ;loop counter for vertical line
;LOOPV			LDR		R0, =0xFF ; WHITE PIXEL
;				STR		R0, [R1]
;				ADDS 	R1,R1,#0x80
;				SUBS 	R2,R2,#1
;				BNE LOOPV
;				


;==========================================================================================================			

;==========================================================================================================
;;				Prints dot next to 0x50000004 (A) 
;				LDR 	R1, =0x50000008
;				LDR		R0, =0xFF
;				STR		R0, [R1]				


;==========================================================================================================				


;==========================================================================================================		



			
				ALIGN 		4					 ; Align to a word boundary

		END                      
   