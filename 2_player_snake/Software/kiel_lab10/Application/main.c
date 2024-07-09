//--------------------------------------------------------
// Application demonstrator: SNAKE game
//--------------------------------------------------------


#include "EDK_CM0.h" 
#include "core_cm0.h"
#include "edk_driver.h"
#include "edk_api.h"

#include <stdio.h>

//Maximum snake length
#define N 150							

//Game region
#define left_boundary 5
#define right_boundary 96
#define top_boundary 5
#define bottom_boundary 116
#define boundary_thick 1

//Global variables
static int i,j;
static char key;
static int score1;
static int score2;
static int pause;
static int snake1_has_moved;
static int snake2_has_moved;

static int gamespeed;
static int speed_table[10]={6,9,12,15,20,25,30,35,40,100};
//static int speed_table[10]={6,6,6,6,6,6,6,6,6,6}; //just to simulate self body hit test case

// Structure define
// Target cordinates and variable to indicate whether target is hit
struct target{
	int x;
	int y;
	int reach;
	}target;

// Snake cordinates, length, direction
struct Snake{
	int x[N];
	int y[N];
	int node;//length of snake
	int direction;
	}snake1,snake2;


//---------------------------------------------
// Game
//---------------------------------------------
	
/* Function to check if the snakes has hit boundary
	 returns 1: If hit is detected
	 returns 0: If no hit is detected	
*/
int boundary_hit(int x1, int y1, int x2, int y2)
{
	int i, j;
	
	for (i = x1; i <= x2; i++)
		for (j = y1; j <= y2; j++)
		{
			if ((snake1.x[0] == i && snake1.y[0] == j)) 
			{
				score2+=5;
				printf("\nGreen Snake Won!\nRed Snake hit with boundary!\nGreen Snake Score: %d\nRed Snake Score: %d",score2,score1);
				printf("\nOOPPSS! Boundary Hit!");
				return 1;	//if there is a boundary hit returns 1
			}
			else if ((snake2.x[0] == i && snake2.y[0] == j))
			{
				score1+=5;				
				printf("\nRed Snake Won!\nGreen Snake hit with boundary!\nRed Snake Score: %d\nGreen Snake Score: %d",score1,score2);
				printf("\nOOPPSS! Boundary Hit!");
				return 1;	//if there is a boundary hit returns 1		
			}
		}
		return 0; //if no boundary hit returns 0
} 

void Game_Init(void)
{	
	//Draw a game region
	clear_screen();
	
	rectangle(left_boundary,top_boundary,right_boundary,top_boundary+boundary_thick,BLUE);//draws top boundary
	rectangle(left_boundary,top_boundary,left_boundary+boundary_thick,bottom_boundary,BLUE);//draws left boundary
	rectangle(left_boundary,bottom_boundary,right_boundary,bottom_boundary+boundary_thick,BLUE);//draws bottom boundary
	rectangle(right_boundary,top_boundary,right_boundary+boundary_thick,bottom_boundary+boundary_thick,BLUE);//draws right boundary

	//Initialise data	
	score1 = 0;
	score2 = 0;
	gamespeed=speed_table[score1];		
	
	//Initialise timer (load value, prescaler value, mode value)
	timer_init((Timer_Load_Value_For_One_Sec/gamespeed),Timer_Prescaler,1);	
	timer_enable();
	
	target.reach=1;
	
	/* Initial cordinates, direction & node size of Snake 1 */
	snake1.direction=1;
	snake1.x[0]=60;snake1.y[0]=80;
	snake1.x[1]=62;snake1.y[1]=80;
	snake1.node=4;

	/* Initial cordinates, direction & node size of Snake 2 */
	snake2.direction = 1;
	snake2.x[0] = 80; snake2.y[0] = 100;
	snake2.x[1] = 82; snake2.y[1] = 100;
	snake2.node = 4;
	
	//By default set pause is 0
	pause=0;
	
	//Print instructions on text console of VGA
	printf("\n------- Snake Game --------");
	printf("\nCentre btn ..... hard reset");
	printf("\nKeyboard r ..... soft reset");
	printf("\n   Player 1:Red Snake   ");//player 1
	printf("\nKeyboard w ........ move up");//player 1
	printf("\nKeyboard s ...... move down");//player 1
	printf("\nKeyboard a ...... move left");//player 1
	printf("\nKeyboard d ..... move right");//player 1
	printf("\n   Player 2:Green Snake   ");//player 2
	printf("\nKeyboard u ........ move up");//player 2
	printf("\nKeyboard n ...... move down");//player 2
	printf("\nKeyboard h ...... move left");//player 2
	printf("\nKeyboard j ..... move right");//player 2
	printf("\nKeyboard space ...... pause");
	printf("\n---------------------------");	
	printf("\nTo run the game, make sure:");
	printf("\n*UART terminal is activated");
	printf("\n*UART baud rate is 19200bps");
	printf("\n*Keyboard is in lower case");
	printf("\n---------------------------");
	printf("\nPress any key to start\n");

	while(KBHIT()==0); //wait till keyboard press is detected
		
	NVIC_EnableIRQ(Timer_IRQn);//start timing
	NVIC_EnableIRQ(UART_IRQn);	
}

void Game_Close(void)
{
	clear_screen();
	
	// Reset scores to 0
	score1 = 0;
	score2 = 0;
	
	printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");//flush screen
	printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
	
	NVIC_DisableIRQ(Timer_IRQn);			
	NVIC_DisableIRQ(UART_IRQn);	
}

//Generate a random target using system tick as food
void target_gen(void)
{
	target.x = (char)random(left_boundary+boundary_thick+1,right_boundary-2);
	target.x = target.x-target.x%2;
	delay(111*target.x);
	target.y = (char)random(top_boundary+boundary_thick+1,bottom_boundary-2);
	target.y = target.y-target.y%2;
	target.reach=0;	
}
	
int GameOver(void)
{
	char key;
	
	NVIC_DisableIRQ(UART_IRQn);
	NVIC_DisableIRQ(Timer_IRQn);
	
	printf("\nGAME OVER !!!\n");
	printf("\nPress 'q' to quit");
	printf("\nPress 'r' to replay\n");
	
	while(1)
		{
			while(KBHIT()==0);
		
			key = UartGetc();
			
			if (key == RESET)
				return 1;
			
			else if (key == QUIT)
				return 0;
			
			else
				printf("\nInvalid Input! Try Again!");
		}		
}


//---------------------------------------------
// UART ISR -- used to input commands
//---------------------------------------------
void UART_ISR(void)
{	

	key=UartGetc();	
	
	//Only update the direction if the previous movement is finished: Snake 1
	if(snake1_has_moved==1)
	{			
		if(key==UP && snake1.direction!=4)
			snake1.direction=3;
		else if(key==RIGHT && snake1.direction!=2)
			snake1.direction=1;
		else if(key==LEFT && snake1.direction!=1)
			snake1.direction=2;
		else if(key==DOWN && snake1.direction!=3)
			snake1.direction=4;
	}

	//Only update the direction if the previous movement is finished: Snake 2
	if (snake2_has_moved == 1)
	{
		if (key == UP2 && snake2.direction != 4)
			snake2.direction = 3;
		else if (key == RIGHT2 && snake2.direction != 2)
			snake2.direction = 1;
		else if (key == LEFT2 && snake2.direction != 1)
			snake2.direction = 2;
		else if (key == DOWN2 && snake2.direction != 3)
			snake2.direction = 4;
	}
	
	if(key==PAUSE)
	{
		if(pause==0)
		{
			pause=1;
			NVIC_DisableIRQ(Timer_IRQn);	
		}
		else
		{
			pause =0;
			NVIC_EnableIRQ(Timer_IRQn);
			NVIC_EnableIRQ(Timer_IRQn);
				
		}
	}
		
	snake1_has_moved=0;
	snake2_has_moved=0;		
}
 

//---------------------------------------------
// TIMER ISR -- used to move the snake
//---------------------------------------------


void Timer_ISR(void)
{
	
	int overlap;
	int retval_GameOver;

	// If game is not paused
	if(pause==0)
	{		
		//Detect if the snake hits itself and end game if it does
		for (i =5; i < snake1.node; i++)
			{
				if (snake1.x[i] == snake1.x[0] && snake1.y[i] == snake1.y[0]) 
				{
					score2+=5;
					printf("\nRed Snake Hit itself!\nRed Snake Score: %d\nGreen Snake Score: %d",score1,score2);
					retval_GameOver = GameOver();
					break;
				}
			}
		for (j =5; j<snake2.node; j++)	
			{
				if((snake2.x[j] == snake2.x[0] && snake2.y[j] == snake2.y[0]))
				{
					score1+=5;
					printf("\nGreen Snake Hit itself!\nRed Snake Score: %d\nGreen Snake Score: %d",score1,score2);
					retval_GameOver = GameOver();
					break;
				}
			}	
				if (retval_GameOver == 0)
				{
					Game_Close();
				}
				else if (retval_GameOver == 1)
				{
					Game_Init();
				}		
			
			// Detect if the snakes hits the boundry
			if ((boundary_hit(left_boundary, top_boundary, right_boundary, top_boundary+boundary_thick)) || 
				(boundary_hit(left_boundary, top_boundary, left_boundary + boundary_thick, bottom_boundary)) ||
				(boundary_hit(left_boundary, bottom_boundary, right_boundary, bottom_boundary)) ||
				(boundary_hit(right_boundary, top_boundary, right_boundary, bottom_boundary + boundary_thick)))	
			{
				retval_GameOver = GameOver();

					if (retval_GameOver == 0)
					{
						Game_Close();
					}
					else if (retval_GameOver == 1)
					{
						Game_Init();
					}
			} 
		//If target is reached, generate a new one
		if(target.reach==1)
		{
			//Generate a new target address that is not overlapped with the snake
			do
			{
				overlap=0;
				// TO DO: Generate Target
				target_gen();
				
				for(i=0,j=0;i<snake1.node && j<snake2.node;i++,j++)
				{
					if((snake1.x[i]==target.x && snake1.y[i]==target.y) || ((snake2.x[i] == target.x && snake2.y[i] == target.y)))
					{
						overlap=1;
						break;
					}
				}
									   
			} while(overlap==1);
					
			//TO DO: Draw the target
			VGA_plot_pixel(target.x, target.y, WHITE);
					
		}
			
		//Shift the snake1
		for(i=snake1.node-1;i>0;i--)
		{
			snake1.x[i]=snake1.x[i-1];
			snake1.y[i]=snake1.y[i-1];
		}

		//Shift the snake2
		for (i = snake2.node - 1; i > 0; i--)
		{
			snake2.x[i] = snake2.x[i - 1];
			snake2.y[i] = snake2.y[i - 1];
		}
			
			//Snake1 direction
		switch(snake1.direction)
		{
			case 1: snake1.x[0]+=2;break;
			case 2: snake1.x[0]-=2;break;
			case 3: snake1.y[0]-=2;break;
			case 4: snake1.y[0]+=2;break;
		}
			
		//Snake2 direction
		switch (snake2.direction)
		{
			case 1: snake2.x[0] += 2; break;
			case 2: snake2.x[0] -= 2; break;
			case 3: snake2.y[0] -= 2; break;
			case 4: snake2.y[0] += 2; break;
		}

		//Detect if the snake reaches the target
		if(snake1.x[0]==target.x && snake1.y[0]==target.y)
		{
			rectangle(target.x,target.y,target.x+2,target.y+2,BLACK);
			snake1.x[snake1.node]=-10;
			snake1.y[snake1.node]=-10;
			snake1.node++;
			target.reach=1;
			score1+=1;				

			if (score1 <= 10)
			{
				if (score2<=score1)
					gamespeed = speed_table[score1];
				else
					gamespeed = speed_table[score2];
			}

			timer_init((Timer_Load_Value_For_One_Sec/gamespeed),Timer_Prescaler,1);	
			timer_enable();
			write_LED(score1);
			printf("\nRed Snake Scored!\nRed Snake Score: %d\nGreen Snake Score: %d",score1,score2);
		}
			
		if (snake2.x[0] == target.x && snake2.y[0] == target.y)
		{
			rectangle(target.x, target.y, target.x + 2, target.y + 2, BLACK);
			snake2.x[snake2.node] = -10;
			snake2.y[snake2.node] = -10;
			snake2.node++;
			target.reach = 1;
			score2 += 1;

			if (score2 <= 10)
			{
				if (score1 <= score2)
					gamespeed = speed_table[score2];
				else
					gamespeed = speed_table[score1];
			}

			timer_init((Timer_Load_Value_For_One_Sec / gamespeed), Timer_Prescaler, 1);
			timer_enable();
			write_LED(score2);
			printf("\nGreen Snake Scored!\nGreen Snake Score: %d\nRed Snake Score: %d",score2,score1);
		}


		// If head to head collision occurs game over
		if ((snake1.x[0] == snake2.x[0]) && (snake1.y[0] == snake2.y[0]))
		{
			printf("\nHead to Head Collision!");

			retval_GameOver = GameOver();

			if (retval_GameOver == 0)
			{
				Game_Close();
			}
			else if (retval_GameOver == 1)
			{
				Game_Init();
			}
		}

		//Detect if the snake 1 has collided with snake 2 , it dies and other snake gets 5 points
		for (i = 1; i < snake2.node; i++)
		{
			if (snake2.x[i] == snake1.x[0] && snake2.y[i] == snake1.y[0])
			{
				score2 += 5;
				printf("\nRed Snake Collided with body!\nGreen Snake Score: %d\nRed Snake Score: %d",score2,score1);

				retval_GameOver = GameOver();

				if (retval_GameOver == 0)
				{
					Game_Close();
				}
				else if (retval_GameOver == 1)
				{
					Game_Init();
				}
			}
		}

		//Detect if the snake 2 has collided with snake 1, it dies and other snake gets 5 points
		for (i = 1; i < snake1.node; i++)
		{
			if (snake1.x[i] == snake2.x[0] && snake1.y[i] == snake2.y[0])
			{
				score1 += 5;
				printf("\nGreen Snake Collided with body!\nRed Snake Score: %d\nGreen Snake Score: %d",score1,score2);

				retval_GameOver = GameOver();

				if (retval_GameOver == 0)
				{
					Game_Close();
				}
				else if (retval_GameOver == 1)
				{
					Game_Init();
				}
			}
		}


		//Move the snake1
		for(i=0;i<snake1.node;i++)
		{ 
			rectangle(snake1.x[i], snake1.y[i], snake1.x[i] + 2, snake1.y[i] + 2, RED);
		}
		rectangle(snake1.x[snake1.node-1],snake1.y[snake1.node-1],snake1.x[snake1.node-1]+2,snake1.y[snake1.node-1]+2,BLACK);

		//Move the snake2
		for (i = 0; i < snake2.node; i++)
		{
			rectangle(snake2.x[i], snake2.y[i], snake2.x[i] + 2, snake2.y[i] + 2, GREEN);
		}
		rectangle(snake2.x[snake2.node - 1], snake2.y[snake2.node - 1], snake2.x[snake2.node - 1] + 2, snake2.y[snake2.node - 1] + 2, BLACK);
	}
		
	// Mark that snake has moved
	snake1_has_moved = 1;
	snake2_has_moved = 1;

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


