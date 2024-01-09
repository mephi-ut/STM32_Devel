
#include "stm32f0xx.h"
#include "crutchs.h"
#include "system_stm32f0xx.h"
#include "system_stm32f0xx.c"

/*
#include "stm32f0xx_rcc.h"
#include "stm32f0xx_gpio.h"


#include "stm32f0xx_rcc.c"
#include "stm32f0xx_gpio.c"
*/

/*Объявляем переменные
GPIO_InitTypeDef port;

void Setup(){
RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);
port.GPIO_Mode = GPIO_Mode_OUT;
port.GPIO_OType = GPIO_OType_PP;
port.GPIO_Pin = GPIO_Pin_1 | GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4;
port.GPIO_Speed = GPIO_Speed_50MHz;
GPIO_Init(GPIOA, &port);

GPIOA -> BRR = GPIO_Pin_1;
GPIOA -> BRR = GPIO_Pin_2;
GPIOA -> BRR = GPIO_Pin_3;
GPIOA -> BRR = GPIO_Pin_4;
}
*/

volatile int iee=0;

int main()
{

//Setup();

    while(1)
    {
//	GPIOA -> BSRR = GPIO_Pin_1;
//	for (int i=0; i<100000 ; i++);
//	GPIOA -> BSRR = GPIO_Pin_1;
	for (int i=0; i<10000000 ; i++);
    iee++;
    }
    
}