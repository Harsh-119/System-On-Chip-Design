//--------------------------------------------------------
// Application demonstrator: SNAKE game
//--------------------------------------------------------


#include "EDK_CM0.h" 
#include "core_cm0.h"
#include "edk_driver.h"
#include "edk_api.h"

#include <stdio.h>

//Maximum snake length
#define N 200							

//Game region
#define left_boundary 5
#define right_boundary 96
#define top_boundary 5
#define bottom_boundary 116
#define boundary_thick 1

//Global variables
static int i;
static char key;
static int score;
static int pause;
static int snake_has_moved;

static int gamespeed;
static int speed_table[10]={6,9,12,15,20,25,30,35,40,100};

// Structure define
struct target{
	int x;
	int y;
	int reach;
	}target;

struct Snake{
	int x[N];
	int y[N];
	int node;
	int direction;
	}snake;


//---------------------------------------------
// Game
//---------------------------------------------


void Game_Init(void)
{	
	//Draw a game region
	clear_screen();
	rectangle(left_boundary,top_boundary,right_boundary,top_boundary+boundary_thick,BLUE);
	rectangle(left_boundary,top_boundary,left_boundary+boundary_thick,bottom_boundary,BLUE);
	rectangle(left_boundary,bottom_boundary,right_boundary,bottom_boundary+boundary_thick,BLUE);
	rectangle(right_boundary,top_boundary,right_boundary+boundary_thick,bottom_boundary+boundary_thick,BLUE);	

	//Initialise data
	
	score=0;
	gamespeed=speed_table[score];		
	
	//Initialise timer (load value, prescaler value, mode value)
	timer_init((Timer_Load_Value_For_One_Sec/gamespeed),Timer_Prescaler,1);	
	timer_enable();
	
	target.reach=1;
	snake.direction=1;
	snake.x[0]=60;snake.y[0]=80;
	snake.x[1]=62;snake.y[1]=80;
	snake.node=4;
	pause=0;
	
	//Print instructions
	printf("\n\n-------- EDK Demo ---------");
	printf("\n------- Snake Game --------");
  printf("\nCentre btn ..... hard reset");
  printf("\nKeyboard r ..... soft reset");
  printf("\nKeyboard w ........ move up");
  printf("\nKeyboard s ...... move down");
  printf("\nKeyboard a ...... move left");
  printf("\nKeyboard d ..... move right");
  printf("\nKeyboard space ...... pause");
  printf("\n---------------------------");	
	printf("\nTo ran the game, make sure:");
	printf("\n*UART terminal is activated");
	printf("\n*UART baud rare:  19200 bps");
	printf("\n*Keyboard is in lower case");
  printf("\n---------------------------");
	printf("\nPress any key to start\n");	
	while(KBHIT()==0);
		
	printf("\nScore=%d\n",score);
	
	NVIC_EnableIRQ(Timer_IRQn);			//start timing
	NVIC_EnableIRQ(UART_IRQn);	
}


void Game_Close(void){
	clear_screen();
	score=0;
	printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");		//flush screen
	printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
	NVIC_DisableIRQ(Timer_IRQn);			
	NVIC_DisableIRQ(UART_IRQn);	
}

//Generate a random target using system tick as seed
void target_gen(void){
		target.x= (char)random(left_boundary+boundary_thick+1,right_boundary-2);
		target.x=target.x-target.x%2;
		delay(111*target.x);
		target.y= (char)random(top_boundary+boundary_thick+1,bottom_boundary-2);
		target.y=target.y-target.y%2;
		target.reach=0;	
}
	
int GameOver(void){
	char key;
	
	NVIC_DisableIRQ(UART_IRQn);
	NVIC_DisableIRQ(Timer_IRQn);
	printf("\nGame over\n");
	printf("\nPress 'q' to quit");
	printf("\nPress 'r' to replay");
	while(1){
		while(KBHIT()==0);
		key = UartGetc();
		if (key == RESET){
			return 1;
		}
		else if (key == QUIT){	
			return 0;
		}
		else
			printf("\nInvalid input");
	}
		
}






//---------------------------------------------
// UART ISR -- used to input commands
//---------------------------------------------

void UART_ISR(void)
{	

  key=UartGetc();	
	
	//Only update the direction if the previous movement is finished
	if(snake_has_moved==1){			
				if(key==UP&&snake.direction!=4)
					snake.direction=3;
				else
					if(key==RIGHT&&snake.direction!=2)
						snake.direction=1;
					else
						if(key==LEFT&&snake.direction!=1)
							snake.direction=2;
						else
							if(key==DOWN&&snake.direction!=3)
								snake.direction=4;
		}
		if(key==PAUSE){
				if(pause==0){
						pause=1;
						NVIC_DisableIRQ(Timer_IRQn);	
				}
				else{
						pause =0;
						NVIC_EnableIRQ(Timer_IRQn);
				}
		}
		
		snake_has_moved=0;
		
}
 

//---------------------------------------------
// TIMER ISR -- used to move the snake
//---------------------------------------------


void Timer_ISR(void)
{
	
	int overlap;

	// If game is not paused
	if(pause==0){
		
			//If target is reached, generate a new one
			if(target.reach==1){

				//Generate a new target address that is not overlapped with the snake
				do{
					overlap=0;
					target_gen();
					for(i=0;i<snake.node;i++){
						if(snake.x[i]==target.x&&snake.y[i]==target.y){
							overlap=1;
							break;
						}
					}
				}while(overlap==1);
					
				//Draw the target
				rectangle(target.x,target.y,target.x+2,target.y+2,GREEN);
				//Update the game speed (maximum 10 levels)	
			}
			
			//Shift the snake
			for(i=snake.node-1;i>0;i--){
				snake.x[i]=snake.x[i-1];
				snake.y[i]=snake.y[i-1];
			}
			
			switch(snake.direction){
				case 1:snake.x[0]+=2;break;
				case 2: snake.x[0]-=2;break;
				case 3: snake.y[0]-=2;break;
				case 4: snake.y[0]+=2;break;
			}
			
			//Detect if the snake reaches the target
			if(snake.x[0]==target.x&&snake.y[0]==target.y){
				rectangle(target.x,target.y,target.x+2,target.y+2,BLACK);
				snake.x[snake.node]=-10;snake.y[snake.node]=-10;
				snake.node++;
				target.reach=1;
				score+=1;				
				if (score<=10)
					gamespeed=speed_table[score];	
				timer_init((Timer_Load_Value_For_One_Sec/gamespeed),Timer_Prescaler,1);	
				timer_enable();
				write_LED(score);
				printf("\nScore=%d\n",score);
			}
			
			//Detect if the snake hits itself
			for(i=3;i<snake.node;i++){
				if(snake.x[i]==snake.x[0]&&snake.y[i]==snake.y[0]){
					if (GameOver()==0)
						Game_Close();
					else
						Game_Init();
				}
			}
			
			//Detect if the snake hits the boundry
			if(snake.x[0]<left_boundary+boundary_thick||snake.x[0]>=right_boundary||snake.y[0]<top_boundary+boundary_thick||snake.y[0]>=bottom_boundary){
				if (GameOver()==0){
					Game_Close();
					return;
				}
				else{
					Game_Init();
					return;
				}
			}		
			
			//Move the snake
			for(i=0;i<snake.node;i++)
				rectangle(snake.x[i],snake.y[i],snake.x[i]+2,snake.y[i]+2,RED);
				rectangle(snake.x[snake.node-1],snake.y[snake.node-1],snake.x[snake.node-1]+2,snake.y[snake.node-1]+2,BLACK);

		}
		
	// Mark that snake has moved
	snake_has_moved=1;

	//Display the total distance that the snake has moved
	Display_Int_Times();
		
	//Clear timer irq
	timer_irq_clear();
		
}	

//---------------------------------------------
// Main Function
//---------------------------------------------


int main(void){

	//Initialise the system
	SoC_init();
	//Initialise the game
	Game_Init();
	
	//Go to sleep mode and wait for interrupts
	while(1)
		__WFI();	
	

}


