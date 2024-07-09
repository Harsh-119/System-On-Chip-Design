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
	NVIC_SetPriority (Timer_IRQn, 0x00);		//Set timer a higher priority
	NVIC_SetPriority (UART_IRQn, 0x40);			//Set UART a lower priority
	seven_seg_write(0,0,0,0);								//Clean 7-segment display
	clear_screen();	
	SCB -> SCR = 1<1;												//Enable sleep-on-exit bit
}

//---------------------------------------------
// Display the number of interrupts on the 7-segment display
//---------------------------------------------

void Display_Int_Times(void){
	
	dig4++;
	
	if(dig4==10){
		dig4=0;
		dig3++;
		if (dig3==10){
			dig3=0;
			dig2++;
			if (dig2==10){
				dig2=0;
				dig1++;
			}
		}
	}
	
	seven_seg_write( dig1, dig2, dig3, dig4);

}

//---------------------------------------------
// Draw a rectangle on the screen
//---------------------------------------------

void rectangle(int x1,int y1,int x2,int y2, int color){
	int i,j;
	for (i=x1;i<x2;i++)
		for (j=y1; j<y2;j++)
			VGA_plot_pixel (i,j,color);
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

//---------------------------------------------
// Delay
//---------------------------------------------

void delay(int value){
	int i;
	for (i=0;i<value;i++);
}

//---------------------------------------------
// A simple random generator using system tick
//---------------------------------------------

char random (char min, char max){
	char i;
	i=(TIMER->CURVALUE)&0xff;				//Load LSB from timer
	while (i<min)										//Adjust the number to the expected range
		i=2*i;
	while (i>max)
		i=i/2;
	
	return i;
}

