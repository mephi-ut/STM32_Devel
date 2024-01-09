
#ifndef USE_FULL_ASSERT
 #define assert_param(x)
#endif


#include "stm32f4xx.h"

#include "usart.h"
#include "stm32f4xx_gpio.h"
#include "stm32f4xx_gpio.c"
#include "usart.c"

#include "stm32f4xx_sdio.h"
#include "stm32f4xx_sdio.c"

#include "stm32f4xx_rcc.h"
#include "stm32f4xx_rcc.c"



#include <stdio.h>


#include "sdcard.h"
#include "sdcard.c"

#include "stm32f4_discovery.h"
#include "stm32f4_discovery.c"



void Delay(__IO uint32_t nCount)
{
  while(nCount--)
  {
  }
}

int MyLowLevelPutchar(int x){
  while(USART_GetFlagStatus(USART2, USART_FLAG_TXE) == RESET);
  USART_SendData(USART2, x);
  return x;
}


void print_buf(uint8_t *buf) {
  for (int i=0;i<512;i++) {
    if (i%8 == 0) printf("\t");
    if (i%16 == 0) printf("\r\n%04x: ", i);
    printf("%02x ", buf[i]);
  }
  printf("\r\n");
}

int main()
{
//  STM_EVAL_LEDInit(LED3);
//  STM_EVAL_LEDInit(LED5);
//  STM_EVAL_LEDOn(LED3);
  
  init_usart();
  SD_LowLevel_Init();   //Initialize PINS, vector table and SDIO interface
  printf("Hello from stm32 printf!\r\n");
  float b = 132.89f;
  printf("b = %e\r\n", b);
  
  //Initialize the SD
  SD_Init(); //After return from this function sd is in transfer mode.
  printf("GO\r\n");

  uint8_t inbuf[512];

  SD_ReadSingleBlock(inbuf, 0);
  printf("First block:\r\n");
  print_buf(inbuf);
  
  SD_ReadSingleBlock(inbuf, 1);
  printf("\r\nSecond block:\r\n");
  print_buf(inbuf);
  
  SD_ReadSingleBlock(inbuf, 2);
  printf("\r\nTheard block:\r\n");
  print_buf(inbuf);
  
  //SD_WriteSingleBlock(inbuf, 3000);
  //printf("Writed.\r\n");

  while(1) {
     STM_EVAL_LEDToggle(LED5);
     Delay(0x3FFFFF);           
  }
}
