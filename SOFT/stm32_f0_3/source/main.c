//#include <stdio.h>
#include "stm32f0xx.h"
#include "crutchs.h"
#include "system_stm32f0xx.h"
#include "stm32f0xx_rcc.h"
#include "stm32f0xx_gpio.h"
#include "stm32f0xx_spi.h"
#include "stm32f0xx_adc.h"

#include "system_stm32f0xx.c"
#include "stm32f0xx_rcc.c"
#include "stm32f0xx_gpio.c"
#include "stm32f0xx_spi.c"
#include "stm32f0xx_adc.c"

//Объявляем переменные
GPIO_InitTypeDef port;
SPI_InitTypeDef spi;
ADC_InitTypeDef adc;
uint8_t sendData;
uint16_t count = 0;
uint16_t data;

void PreInit(){
RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);
RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI1, ENABLE);
RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE);


port.GPIO_Mode = GPIO_Mode_OUT;
port.GPIO_OType = GPIO_OType_PP;
port.GPIO_Pin = GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_7;
port.GPIO_Speed = GPIO_Speed_50MHz;
GPIO_Init(GPIOA, &port);

GPIOA -> BSRR = GPIO_Pin_4;
GPIOA -> BSRR = GPIO_Pin_7;

while( 81){
//for (count = 0; count < 1000; count++);

GPIOA -> BSRR = GPIO_Pin_4;
GPIOA -> BSRR = GPIO_Pin_5;
//for (count = 0; count < 1000; count++);

GPIOA -> BRR = GPIO_Pin_4;
GPIOA -> BRR = GPIO_Pin_5;
//count++;
}

GPIOA -> BRR = GPIO_Pin_4;
GPIOA -> BRR = GPIO_Pin_7;

}


void initAll()
{
port.GPIO_Mode = GPIO_Mode_AF;
port.GPIO_OType = GPIO_OType_PP;
port.GPIO_Pin = GPIO_Pin_0 |  GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7;
port.GPIO_Speed = GPIO_Speed_50MHz;
GPIO_Init(GPIOA, &port);

ADC_StructInit(&adc);
adc.ADC_ContinuousConvMode = ENABLE;
adc.ADC_ExternalTrigConv = ADC_ExternalTrigConv_T1_TRGO;
ADC_Init(ADC1, &adc);

SPI_StructInit(&spi);
spi.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
spi.SPI_Mode = SPI_Mode_Master;
spi.SPI_DataSize = SPI_DataSize_8b;
spi.SPI_CPOL = SPI_CPOL_Low;
spi.SPI_CPHA = SPI_CPHA_2Edge;
spi.SPI_NSS = SPI_NSS_Soft;
//spi.SPI_NSS = SPI_NSS_Hard;
spi.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_4;
spi.SPI_FirstBit = SPI_FirstBit_MSB;
spi.SPI_CRCPolynomial = 7;
SPI_Init(SPI1, &spi);

//GPIO_StructInit(&port);
//port.GPIO_PuPd = GPIO_PuPd_DOWN;
//port.GPIO_Pin = GPIO_Pin_0;
//port.GPIO_Speed = GPIO_Speed_2MHz;
//GPIO_Init(GPIOA, &port);

RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);
RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI1, ENABLE);
RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE);

}

int main()
{
//    __enable_irq();
    PreInit();
//    initAll();
    //Включаем АЦП
//    ADC_Cmd(ADC1, ENABLE);
//    ADC_SoftwareStartConvCmd(ADC1, ENABLE);
    //И конечно же включаем SPI
    SPI_Cmd(SPI1, ENABLE);
//    GPIOA -> BRR = GPIO_Pin_4;
    while(1)
    {
    SPI_SendData8(SPI1, 0x40);
    SPI_SendData8(SPI1, 0x0);
    SPI_SendData8(SPI1, 0x0);
    SPI_SendData8(SPI1, 0x0);
    SPI_SendData8(SPI1, 0x0);
    SPI_SendData8(SPI1, 0x95);
    SPI_SendData8(SPI1, 0x0);
    SPI_SendData8(SPI1, 0x0);

//    GPIOA -> BSRR = GPIO_Pin_4;
//for (count = 0; count < 100; count++);
    
    }
}