/*
 *-----------------------------------------------------------------------------
 * The confidential and proprietary information contained in this file may
 * only be used by a person authorised under and to the extent permitted
 * by a subsisting licensing agreement from ARM Limited.
 *
 *            (C) COPYRIGHT 2010-2013 ARM Limited.
 *                ALL RIGHTS RESERVED
 *
 * This entire notice must be reproduced on all copies of this file
 * and copies of this file may only be made by a person if such person is
 * permitted to do so under the terms of a subsisting license agreement
 * from ARM Limited.
 *
 * @file     retarget.c
 * @date     Dec 2013
 *
 *-----------------------------------------------------------------------------
 */


#if defined ( __CC_ARM   )
/******************************************************************************/
/* Retarget functions for ARM DS-5 Professional / Keil MDK                                 */
/******************************************************************************/

#include <stdio.h>
#include <time.h>
#include <rt_misc.h>
#include "EDK_CM0.h"
#include "edk_driver.h"
#include "edk_api.h"

#pragma import(__use_no_semihosting_swi)

extern unsigned char UartGetc(void);
extern unsigned char UartPutc(unsigned char my_ch);
struct __FILE { int handle; /* Add whatever you need here */ };
FILE __stdout;
FILE __stdin;

//---------------------------------------------
// UART
//---------------------------------------------

unsigned char VGAPutc(unsigned char my_ch)
{
	VGA->CONSOLE = my_ch;
  return (my_ch);
}

unsigned char UartPutc(unsigned char my_ch)
{
	UART->DATA=my_ch;
  return (my_ch);
}

// Get a character
unsigned char UartGetc(void)
{
//	while(((UART->STATUS)&0x01)!=0x01){}
	return UART->DATA;
}

int KBHIT(void){
		if(((UART->STATUS)&0x01)==0x00)
			return 1;
		else
			return 0;
}

int fputc(int ch, FILE *f) {
  return (VGAPutc(ch));
}

int fgetc(FILE *f) {
  return (UartGetc());
}

int ferror(FILE *f) {
  /* Your implementation of ferror */
  return EOF;
}


void _ttywrch(int ch) {
  UartPutc (ch);
}


void _sys_exit(int return_code) {
label:  goto label;  /* endless loop */
}

#else

/******************************************************************************/
/* Retarget functions for GNU Tools for ARM Embedded Processors               */
/******************************************************************************/
#include <stdio.h>
#include <sys/stat.h>

extern unsigned char UartPutc(unsigned char my_ch);

__attribute__ ((used))  int _write (int fd, char *ptr, int len)
{
  size_t i;
  for (i=0; i<len;i++) {
    VGAPutc(ptr[i]); // call character output function
    }
  return len;
}


#endif
