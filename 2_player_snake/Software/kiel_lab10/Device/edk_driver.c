//--------------------------------------------------------
// Peripheral driver functions
//--------------------------------------------------------


#include "EDK_CM0.h"
#include <string.h>
#include "edk_driver.h"
#include "edk_api.h"


//---------------------------------------------
// VGA driver function
//---------------------------------------------

//Plot a pixel to the image buffer

void VGA_plot_pixel (int x, int y, int col){
	//100x120 resolution
	int addr;
	addr=y*128+x;
	*(&(VGA->IMG)+addr) = col;
}

//---------------------------------------------
// 7 segment display driver function
//---------------------------------------------

void seven_seg_write(char dig1, char dig2,char dig3,char dig4){
	
	SEVSEG->DIGIT1=dig4;
	SEVSEG->DIGIT2=dig3;
	SEVSEG->DIGIT3=dig2;
	SEVSEG->DIGIT4=dig1;
}

//---------------------------------------------
// Timer driver function
//---------------------------------------------

//Timer initialization
//4-bits Control register: [0]: timer enable, [1] mode (free-run or reload) [2]: prescaler

void timer_init(int load_value, int prescale, int mode){
	
	int control ;
	int prescale_bits;
	
	if (prescale==16)
		prescale_bits=1;	
	else
		prescale_bits=0;	
		
	control = ((prescale_bits << 2)|(mode << 1));
	TIMER->INITVALUE = load_value;
	TIMER->CLEAR=1;
	TIMER->CONTROL = control;					
}

// timer enable

void timer_enable(void){
	int control ;
	control = TIMER->CONTROL;
	control = control | 0x01;
	TIMER->CONTROL = control;					
}

// clear interrupt request from timer

void timer_irq_clear(void){
	TIMER->CLEAR=0x01;					
}

//---------------------------------------------
// GPIO driver function
//---------------------------------------------

// GPIO read

int GPIO_read(void){
	GPIO->DIR=0;
	return GPIO->DATA;
}

// GPIO write

void GPIO_write(int data){
	GPIO->DIR=1;
	GPIO->DATA=data;
}
