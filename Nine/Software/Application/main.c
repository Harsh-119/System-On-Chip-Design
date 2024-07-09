//------------------------------------------------------------------------------------------------------
// ARM CMSIS and Software Drivers
// 1)Input from 8-bit switch and output to LEDs
// 2)Input characters from keyboard (UART) and output to the terminal
// 3)A counter is incremented every second and displayed on the 7-segment display
//------------------------------------------------------------------------------------------------------

#include "EDK_CM0.h" 
#include "core_cm0.h"
#include "edk_driver.h"

#define Timer_Interrput_Frequency 			1
#define System_Tick_Frequency 					50000000
#define Timer_Prescaler 								1							//Timer Prescaler, options are: 256, 16, 1 
#define Timer_Load_Value 								(System_Tick_Frequency/Timer_Interrput_Frequency/Timer_Prescaler)


static char dig1,dig2,dig3,dig4;

//---------------------------------------------
// UART ISR
//---------------------------------------------

void UART_ISR(void)
{	
	char c;
	c=*(unsigned char*) AHB_UART_BASE;		//read a character from UART
	*(unsigned char*) AHB_UART_BASE = c;	//write the character to UART
}
 

//---------------------------------------------
// TIMER ISR
//---------------------------------------------


void Timer_ISR(void)
{
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
	timer_irq_clear();
	
}	

//---------------------------------------------
// Main Function
//---------------------------------------------


int main(void){

	//Initialise timer (load value, prescaler value, mode value)
	timer_init(Timer_Load_Value,Timer_Prescaler,1);
	timer_enable();
	seven_seg_write(0,0,0,0);
	NVIC_SetPriority (Timer_IRQn, 0x00);
	NVIC_SetPriority (UART_IRQn, 0x40);
	NVIC_EnableIRQ(Timer_IRQn);			//enable timer interrupt
	NVIC_EnableIRQ(UART_IRQn);			//enable UART interrupt
	while(1)
		GPIO_write(GPIO_read());
	
}


