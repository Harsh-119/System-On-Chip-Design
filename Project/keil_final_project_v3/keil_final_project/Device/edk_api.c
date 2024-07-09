//--------------------------------------------------------
// Application Programming Interface (API) functions
//--------------------------------------------------------

#include "EDK_CM0.h"
#include <string.h>
#include "edk_driver.h"
#include "edk_api.h"
#include "core_cm0.h"
#include "core_cmFunc.h"
#include "core_cmInstr.h"

//---------------------------------------------
// SoC initialization
//---------------------------------------------

void SoC_init(void){
	seven_seg_write(0,0,0,0);								//Clean 7-segment display
	NVIC_SetPriority (Timer_IRQn, 0x00);		//Set timer a higher priority
	NVIC_SetPriority (UART_IRQn, 0x40);			//Set UART a lower priority

	SCB -> SCR = 1<1;												//Enable sleep-on-exit bit
}

//---------------------------------------------
// Display the number of interrupts on the 7-segment display
//---------------------------------------------

int Display_Int_Times(void){ //incrementing
	
	int result = 0;

	dig4++;
	if(dig4==10){
		dig4=0;
		dig3++;
		if (dig3==6 && dig4 == 0){
				result = 1;
		}
		else{
			result = 0;
		}
	}
	seven_seg_write( dig1, dig2, dig3, dig4);
	


return result;

}

//---------------------------------------------
// Clean up the screen
//---------------------------------------------

void clear_screen(void){
	int i,j;
	for(i=0;i<DISPLAY_WIDTH;i++)
		for (j=0;j<DISPLAY_HEIGHT;j++)
			VGA_plot_pixel(i,j,BLACK);
}

//---------------------------------------------
// Read 8-bits from 8-bits switches
//---------------------------------------------

int read_switch(void){
	return GPIO_read();
}

//---------------------------------------------
// Write 8-bits to 8-bits LEDs
//---------------------------------------------

void write_LED (int data){
	GPIO_write(data);
}




