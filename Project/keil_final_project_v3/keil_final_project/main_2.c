#include "EDK_CM0.h"

#include "core_cm0.h"

#include "edk_driver.h"

#include "edk_api.h"

#include <stdio.h>
 //#include <time.h>
#include <stdlib.h>

#include <string.h>
 //#include <sys/unistd.h> // for sleep function

//#define MIN_LEVEL 1
//#define MAX_LEVEL 5
#define NUM_QUESTIONS 10 // Number of questions per level
#define TIME_LIMIT 60 // Time limit for each set in seconds

//Game region
#define left_boundary 5
#define right_boundary 96
#define top_boundary 5
#define bottom_boundary 116
#define boundary_thick 1

//Global variables
static int correct_answers = 0;
static int incorrect_answers = 0;
static int score = 0;
static int play1;
static int play2;
static int play3;
static int play4;
static int play5;

static int countdown_time = TIME_LIMIT; // Countdown time initialized to TIME_LIMIT

void Game_Init(void) {
  clear_screen();

  correct_answers = 0;
  incorrect_answers = 0;

  printf("Rules:\n");
  printf("-To start the game choose a level.\n");
  printf("-The FPGA LED will glow upon the correct answer\n");
  printf("-How to read the 7-segment\n");
  printf("The 7-Segment on the FPGA will show the live score\n");
  printf("   Left most shows correct answer, C,score\n");
  printf("   Right most shows incorrect answer, F,score\n");
  printf("C,score,F,score\n");
  printf("============================\n");
  printf("Select level: 1,2,3,4,5\n");
  printf("1. Level 1 (Number range: 1~10)\n");
  printf("2. Level 2 (Number range: 1~20)\n");
  printf("3. Level 3 (Number range: 1~50)\n");
  printf("4. Level 4 (Number range: 1~100)\n");
  printf("5. Level 5 (Number range: 1~200)\n");
  printf("5. Level 5 (Number range: 1~200)\n");

  while (KBHIT() == 0);

  NVIC_EnableIRQ(UART_IRQn);
}

void Game_Close(void) {
  clear_screen();
  correct_answers = 0;
  incorrect_answers = 0;
  printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"); //flush screen
  printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
  NVIC_DisableIRQ(Timer_IRQn);
  NVIC_DisableIRQ(UART_IRQn);
}

int GameOver(void) {
  char key;

  NVIC_DisableIRQ(UART_IRQn);
  NVIC_DisableIRQ(Timer_IRQn);
  printf("\nGame over\n");
  printf("Correct answers: %d\n", correct_answers);
  printf("Incorrect answers: %d\n", incorrect_answers);
  printf("Your score: %d/%d", score, NUM_QUESTIONS);
  printf("\nPress 'q' to quit");
  printf("\nPress 'r' to replay");
  while (1) {
    while (KBHIT() == 0);
    key = UartGetc();
    if (key == RESET) {
      return 1;
    } else if (key == QUIT) {
      return 0;
    } else
      printf("\nInvalid input\n");
  }
}

int generateRandom(int min, int max) {
  return rand() % (max - min + 1) + min;
}

int askQuestion(int a, int b, int operation) {
  int c, d, count;
  char key;
  char UARTkey1, UARTkey2, UARTkey3, UARTkey4, UARTkey5;
  char concat[6];
  int cont_integ;
  switch (operation) {
  case 1: // Addition
    c = a + b;
    printf("%d + %d = ", a, b);
    break;
  case 2: // Subtraction
    c = a - b;
    printf("%d - %d = ", a, b);
    break;
  case 3: // Multiplication
    c = a * b;
    printf("%d * %d = ", a, b);
    break;
  case 4: // Division
    c = a / b;
    printf("%d / %d = ", a, b);
    break;
  }

  while (KBHIT() == 0);
  UARTkey1 = UartGetc();
  //printf("c=%d\n",c);
  if (c > 9) {
    while (KBHIT() == 0);
    UARTkey2 = UartGetc();
    //printf("UARTkey2 = %c\n",UARTkey2);
    if (c > 99) {
      while (KBHIT() == 0);
      UARTkey3 = UartGetc();
      //printf("UARTkey3 = %c\n",UARTkey3);
      if (c > 999) {
        while (KBHIT() == 0);
        UARTkey4 = UartGetc();
        //printf("UARTkey4 = %c\n",UARTkey4);
        if (c > 9999) {
          while (KBHIT() == 0);
          UARTkey5 = UartGetc();
          //printf("UARTkey5 = %c\n",UARTkey5);
        }
      }
    }
  }

  concat[0] = UARTkey1;
  concat[1] = UARTkey2;
  concat[2] = UARTkey3;
  concat[3] = UARTkey4;
  concat[4] = UARTkey5;
  concat[5] = '\0';

  cont_integ = atoi(concat);

  return (c == cont_integ);
}

void playLevel(int min, int max) {
  int a, b, i, operation, result, count = 0; //, score = 0, correct_answers = 0, incorrect_answers = 0;

  for (i = 0; i < NUM_QUESTIONS; ++i) {
    a = generateRandom(1, max);
    b = generateRandom(1, a); // Ensure b is less than or equal to a
    while (a % b != 0) { // Make sure b is a factor of a
      b = generateRandom(1, a);
    }
    operation = generateRandom(1, 4); // Randomly select operation

    result = askQuestion(a, b, operation);
    if (result) {
      printf("Correct answer\n");
      ++score;
      ++correct_answers;
      while (1) {
        *(unsigned int * )(AHB_GPIO_BASE + 4) = 0x01; //GPIO write mode
        *(unsigned int * ) AHB_GPIO_BASE = 1; //Write to the LEDs
        seven_seg_write(12, correct_answers, 15, incorrect_answers);

        break;
      }
    } else {
      printf("Incorrect answer\nThe answer is %d\n", (operation == 4) ? a / b : (operation == 1) ? a + b : (operation == 2) ? a - b : a * b);
      ++incorrect_answers;
      while (1) {
        *(unsigned int * )(AHB_GPIO_BASE + 4) = 0x01; //GPIO write mode
        *(unsigned int * ) AHB_GPIO_BASE = 0; //Write to the LEDs
        seven_seg_write(12, correct_answers, 15, incorrect_answers);
        break;
      }
    }
  }
}

//---------------------------------------------
// UART ISR -- used to input commands
//---------------------------------------------

void UART_ISR(void) {
  int a, b, i, operation, result;
  int c, d;
  int count = 0;
  char key, UARTkey2;
  char concat[3];

  int cont_integ;

  key = UartGetc();
  if (key < MIN_LEVEL || key > MAX_LEVEL) {
    printf("Incorrect choice\n");
  } else {
    int level = key - '0'; // Convert char to int (assuming 'key' is '1', '2', etc.)
    //seven_seg_write('11','10','10', level); // Update the seven-segment display with the level number

    //countdown_time = TIME_LIMIT; // Reset countdown time
    //seven_seg_write(0, 6, 0, 0); // Display 60 initially

    // Initialize the timer
    timer_init(Timer_Load_Value, Timer_Prescaler, 1);
    timer_enable();
    NVIC_EnableIRQ(Timer_IRQn); // Enable the Timer interrupt

    switch (level) {
    case 1:
      seven_seg_write('11', '11', '11', '11'); //putting illeagal values on purpose to void 7seg
      playLevel(1, 10);
      break;
    case 2:
      seven_seg_write('11', '11', '11', '11'); //putting illeagal values on purpose to void 7seg

      playLevel(1, 20);
      break;
    case 3:
      seven_seg_write('11', '11', '11', '11'); //putting illeagal values on purpose to void 7seg

      playLevel(1, 50);
      break;
    case 4:
      seven_seg_write('11', '11', '11', '11'); //putting illeagal values on purpose to void 7seg

      playLevel(1, 100);
      break;
    case 5:
      seven_seg_write('11', '11', '11', '11'); //putting illeagal values on purpose to void 7seg

      playLevel(1, 200);
      break;
    }
  }

  while (result == 1) {
    //Clear timer irq
    timer_irq_clear();
    GameOver();
  }

  if (GameOver() == 0) {
    Game_Close();
  } else {
    Game_Init();
  }
}

//---------------------------------------------
// TIMER ISR -- used to control the arithmetic operation problem sets
//---------------------------------------------

void Timer_ISR(void) {
  // Declare variables at the beginning of the block
  int tens, ones;

  // Update the countdown time
  if (countdown_time > 0) {
    countdown_time--;
    tens = countdown_time / 10;
    ones = countdown_time % 10;
    seven_seg_write(0, tens, ones, 0);
  } else {
    // Time's up
    NVIC_DisableIRQ(Timer_IRQn); // Disable the Timer interrupt
    GameOver();
  }

  //Clear timer irq
  timer_irq_clear();
}

int main(void) {
  SoC_init();

  Game_Init(); //initialize the game interface

  while (1)
    __WFI();
}