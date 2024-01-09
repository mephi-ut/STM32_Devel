#include <stdint.h>
#include "system_stm32f10x.h"
#include "system_stm32f10x.c"
#include "defines.h"
#include "typedefs.h"
#include "gpio.c"
#include "rcc.c"
#include "spi.c"
#include "adc.c"
#include "sdcard.c"
#include <string.h>

#define SD_HEADERS "\000voltlogger\000\001\001\000\000Voltlogger0000\0000\0000"



SD_Error SD_WriteBlock_1(uint32_t WriteAddr)
{
  Wstatus = BuffReady;
  BuffReady = 0;
  uint32_t i = 0;
  SD_Error rvalue = SD_RESPONSE_FAILURE;
  SD_CS_LOW();
  SD_SendCmd(SD_CMD_WRITE_SINGLE_BLOCK, WriteAddr, 0xFF);
  if (!SD_GetResponse(SD_RESPONSE_NO_ERROR))
  {
    SD_WriteByte(SD_DUMMY_BYTE);
    SD_WriteByte(0xFE);
	if (Wstatus == 1){
    for (i = 0; i < SD_BUFSIZE/2; i += 1)
    {
    SD_WriteByte(Buffer1[i]);
    SD_WriteByte(Buffer1[i] >> 8);
    }
    }
    
    if (Wstatus == 2){
    for (i = 0; i < SD_BUFSIZE/2; i += 1)
    {
    SD_WriteByte(Buffer2[i]);
    SD_WriteByte(Buffer2[i] >> 8);
    }
    }
    
    SD_ReadByte();
    SD_ReadByte();
    if (SD_GetDataResponse() == SD_DATA_OK)
    {
      rvalue = SD_RESPONSE_NO_ERROR;
    }
  }
  SD_CS_HIGH();
  SD_WriteByte(SD_DUMMY_BYTE);
    Wstatus = 0;
  return rvalue;
}

void ADC_Start (void){

    ADC_InitTypeDef     ADC_InitStructure;
    GPIO_InitTypeDef    GPIO_InitStructure;
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE);
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 ;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz ;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    ADC_InitStructure.ADC_Mode = ADC_Mode_Independent;
    ADC_InitStructure.ADC_ScanConvMode = ENABLE;
    ADC_InitStructure.ADC_ContinuousConvMode = ENABLE;
    ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None;
    ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
    ADC_InitStructure.ADC_NbrOfChannel = 0;
    ADC_Init(ADC1, &ADC_InitStructure);
    ADC_Cmd(ADC1, ENABLE);
    ADC_ResetCalibration(ADC1);
    while(ADC_GetResetCalibrationStatus(ADC1));
    ADC_StartCalibration(ADC1);
    while(ADC_GetCalibrationStatus(ADC1));
    ADC_SoftwareStartConvCmd(ADC1, ENABLE);

}

uint32_t SD_WriteHeaders() {
    //uint8_t header[SD_BUFSIZE];
    memset(Buffer1, 0, SD_BUFSIZE);
    memcpy(Buffer1, SD_HEADERS, sizeof(SD_HEADERS));
    SD_Status = SD_WriteBlock_1(0);
    return 1; // SD_BUFSIZE;
}



int main(void) {

    status = SD_Init();
    checkSDStatus();
    writeBufFilled = 0;
//    SD_WriteHeaders();
    SDWriteOffset  = SD_BUFSIZE;
    SystemCoreClockUpdate();
    SysTick_Config(SystemCoreClock/5000);
    ADC_Start();

    while (1)
	{
	if (BuffReady != 0){
	check=1;
	SD_WriteBlock_1(SDWriteOffset);
	SDWriteOffset  = SDWriteOffset + SD_BUFSIZE;

	}


    }
}

void SysTick_Handler(void) {

//ADC1ConvertedValue = ADC_GetConversionValue(ADC1);
ADC1ConvertedValue = 0xAA;
if (Rstatus == 1 && Wstatus != 1){
Buffer1[BuffCount] = TMSTP;
BuffCount++;
Buffer1[BuffCount] = ADC1ConvertedValue;
BuffCount++;
TMSTP++;
if ( BuffCount == 0){
	Rstatus = 2;
	BuffReady = 1;
}
}

if (Rstatus == 2 && Wstatus != 2){
Buffer2[BuffCount] = TMSTP;
BuffCount++;
Buffer2[BuffCount] = ADC1ConvertedValue;
BuffCount++;
TMSTP++;
if (BuffCount == 0){
	Rstatus = 1;
	BuffReady = 2;
//	BuffCount = 0;
}
}

/*
if ( BuffCount == 0 && Rstatus == 1 ){
	Rstatus = 2;
	BuffReady = 1;
//	BuffCount = 0;
}

if (BuffCount == 0 && Rstatus == 2){
	Rstatus = 1;
	BuffReady = 2;
//	BuffCount = 0;
}

*/
}

