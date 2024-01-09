


#include <stdio.h>
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
uint16_t counter = 0;
uint16_t data;

void initAll()
{
RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);
RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI1, ENABLE);
RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE);

port.GPIO_Mode = GPIO_Mode_AF;
port.GPIO_OType = GPIO_OType_PP;
port.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7;
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
spi.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_4;
spi.SPI_FirstBit = SPI_FirstBit_MSB;
spi.SPI_CRCPolynomial = 7;
SPI_Init(SPI1, &spi);

GPIO_StructInit(&port);
port.GPIO_PuPd = GPIO_PuPd_DOWN;
port.GPIO_Pin = GPIO_Pin_0;
port.GPIO_Speed = GPIO_Speed_2MHz;
GPIO_Init(GPIOA, &port);
}

int main()
{
    __enable_irq();
    initAll();
    //Включаем АЦП
//    ADC_Cmd(ADC1, ENABLE);
//    ADC_SoftwareStartConvCmd(ADC1, ENABLE);
    //И конечно же включаем SPI
    SPI_Cmd(SPI1, ENABLE);
    while(1)
    {
        //Это просто счетчик, чтобы отсылать на шину данные только когда счетчик 
    //досчитает до 15000, число взято абсолютно "от балды" ))
        counter++;
//    data = ADC_GetConversionValue(ADC1);
        //Сделали АЦП, анализируем данные
    if (data == 0xFFF)
    {
    sendData = 0x04;
    }
    else if (data > 0xE8B)
    {
            sendData = 0x03;
    }
    else if (data > 0x9B2)
    {
        sendData = 0x02;
    }
    else if (data > 0x4D9)
    {
        sendData = 0x01;
    }
    else
    {
        sendData = 0x00;
    }
        if(counter == 15000)
    {
            //Отсылаем, ради этого все и затеивалось
        SPI_I2S_SendData16(SPI1, sendData);
    }
    }
}