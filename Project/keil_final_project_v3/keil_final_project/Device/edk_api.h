//--------------------------------------------------------
// Application Programming Interface (API) header file
//--------------------------------------------------------


//--------------------------------------------------------
// User parameter define
//--------------------------------------------------------

#define Timer_Interrput_Frequency 			1
#define System_Tick_Frequency 					50000000
#define Timer_Prescaler 								1							//Timer Prescaler, options are: 256, 16, 1 
#define Timer_Load_Value 								(System_Tick_Frequency/Timer_Interrput_Frequency/Timer_Prescaler)

//--------------------------------------------------------
// Constant parameters
//--------------------------------------------------------

//Image region size
#define DISPLAY_WIDTH 100
#define DISPLAY_HEIGHT 120

//VGA color
#define RED 	0xE0
#define GREEN 0x1C
#define BLUE 0x03
#define WHITE 0xFF
#define BLACK 0x00

//Command from the keyboard
#define LEFT 0x61
#define RIGHT 0x64
#define DOWN 0x73
#define UP 0x77
#define RESET 0x72
#define QUIT 0x71
#define PAUSE 0x20
#define MIN_LEVEL 0x31 //1
#define MAX_LEVEL 0x35 //5
#define LEVEL1 0x31
#define LEVEL2 0x32
#define LEVEL3 0x33
#define LEVEL4 0x34
#define LEVEL5 0x35

//--------------------------------------------------------
// API functions declaration
//--------------------------------------------------------

void SoC_init(void);					//SoC initialization

int Display_Int_Times(void);				//Display the number of interrupts on the 7-segment display

void clear_screen(void);			// Clean up the screen

int read_switch(void);				// Read 8-bits from 8-bits switches

void write_LED (int data);		// Write 8-bits to 8-bits LEDs

int KBHIT(void);							//Wait for keyboard hit

extern unsigned char UartPutc(unsigned char my_ch);		//Retarget functions

extern unsigned char VGAPutc(unsigned char my_ch);		//Retarget functions

extern unsigned char UartGetc(void);									//Retarget functions
 
//--------------------------------------------------------
// API global variables
//--------------------------------------------------------
 
static char dig1,dig2,dig3,dig4;

