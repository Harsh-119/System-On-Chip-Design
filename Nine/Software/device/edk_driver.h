//--------------------------------------------------------
// Peripheral driver header file
//--------------------------------------------------------


#include "core_cm0.h"                       /* Cortex-M0 processor and core peripherals           */



//--------------------------------------------------------
//           Peripheral memory map    
//--------------------------------------------------------


#define AHB_VGA_BASE				0x50000000
#define AHB_UART_BASE				0x51000000
#define AHB_TIMER_BASE			0x52000000
#define AHB_GPIO_BASE				0x53000000
#define AHB_7SEG_BASE				0x54000000
#define NVIC_INT_ENABLE			0xE000E100



//--------------------------------------------------------
//           Peripheral type define    
//--------------------------------------------------------


// Timer define 

typedef struct
{
  volatile  unsigned int  INITVALUE;        
  volatile  unsigned int  CURVALUE;         
  volatile  unsigned int  CONTROL;       
  volatile  unsigned int  CLEAR;        
} TIMER_TypeDef;


// UART define 

typedef struct
{
	volatile unsigned int  DATA;  
	volatile unsigned int  STATUS; 
} UART_TypeDef;



//GPIO define (Switch input)

typedef struct
{
  volatile  unsigned int  DATA;        
  volatile  unsigned int  DIR;         
} GPIO_TypeDef;


//7-segments define

typedef struct
{
  volatile  unsigned int  DIGIT1;        
  volatile  unsigned int  DIGIT2;           
  volatile  unsigned int  DIGIT3;          
  volatile  unsigned int  DIGIT4;        
} SEVENSEG_TypeDef;


// LED define 

typedef struct
{
  volatile  unsigned int  BITS;        
} LED_TypeDef;

// VGA define 

typedef struct
{
  volatile  unsigned int  CONSOLE;        
  volatile  unsigned int  IMG; 
} VGA_TypeDef;

//--------------------------------------------------------
//           Peripheral instances define   
//--------------------------------------------------------

#define TIMER           ((TIMER_TypeDef *) AHB_TIMER_BASE )
#define UART            ((UART_TypeDef  *) AHB_UART_BASE  )
#define GPIO            ((GPIO_TypeDef  *) AHB_GPIO_BASE  )
#define SEVSEG          ((SEVENSEG_TypeDef  *) AHB_7SEG_BASE  )
#define VGA							((VGA_TypeDef   *) AHB_VGA_BASE   )



//--------------------------------------------------------
// Peripheral driver functions
//--------------------------------------------------------


void VGA_plot_pixel (int x, int y, int col);				//Plot a pixel to the image buffer

void seven_seg_write(char dig1, char dig2,char dig3,char dig4);		//Write to 7-segment display
 
void timer_init(int load_value, int prescale, int mode);			//Initialize the timer
	
void timer_enable(void);				//Enable the timer
	
void timer_irq_clear(void);			//Clear interrupt request from timer

int GPIO_read(void);						//GPIO read (from switches)

void GPIO_write(int data);			//GPIO write (to LEDs)
