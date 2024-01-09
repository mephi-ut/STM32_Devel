#include "stm32f10x.h"
#ifndef USE_FULL_ASSERT
 #define assert_param(x)
#endif
#include "stm32f10x_adc.h"
#include "stm32f10x_adc.c"
#include "stm32f10x_rcc.h"
#include <string.h>

int Voltage = 0;
void USART1_Init(void); //Объявление функции инициализации GPIOA и USART1
void USART1_Send_Sym(char str); //Объявление функции передачи одиночного символа
void USART1_Send_Str(char* str); // Объявляем функцию передачи строки
void USART1_Send_endln();
void ADC_Configuration(void);
u16 readADC1(u8 channel);
char buffer[32];

void reverse(char s[])
 {
     int i, j;
     char c;
 
     for (i = 0, j = strlen(s)-1; i<j; i++, j--) {
         c = s[i];
         s[i] = s[j];
         s[j] = c;
     }
 }

void itoa(int n, char s[])
{
     int i, sign;

     if ((sign = n) < 0)  /* записываем знак */
         n = -n;          /* делаем n положительным числом */
     i = 0;
     do {       /* генерируем цифры в обратном порядке */
         s[i++] = n % 10 + '0';   /* берем следующую цифру */
     } while ((n /= 10) > 0);     /* удаляем */
     if (sign < 0)
         s[i++] = '-';
     s[i] = '\0';
     reverse(s);
}



int main()
{
  USART1_Init(); //Вызов функции инициализации
  ADC_Configuration();
  while(1)
  {
  Voltage = readADC1(10);
//  Voltage = 212345;
    itoa(Voltage,buffer);
    USART1_Send_Str(buffer);// Печатаем строку
    USART1_Send_endln();
    for(uint32_t i=0; i<0x0001FFFF; i++); //Временная задержка
  }
}

void USART1_Init()
{
  //RCC
  RCC->APB2ENR |= (RCC_APB2ENR_IOPAEN | RCC_APB2ENR_USART1EN); //Включаем тактирование GPIOA и USART1
  //GPIOA
  GPIOB->CRH |= (GPIO_CRH_CNF10_1 | GPIO_CRH_MODE9); //GPIOA - выход Push_Pull, альтернативная функция, скорость 50 МГц
  //USART1
  USART1->CR1 |= USART_CR1_UE; //Включаем USART1
  USART1->CR1 &= ~USART_CR1_M; //Размерность слова данных - 8 бит
  USART1->CR2 &= ~USART_CR2_STOP; //1 стоп-бит
//  USART1->BRR = 0x9C4; //Скорость обмена 9600 бод
  USART1->BRR = 0xD0; //Скорость обмена 115200 бод
  USART1->CR1 |= USART_CR1_TE; //Включаем передатчик USART1  
}

void USART1_Send_Sym(char data)
{
  while(!(USART1->SR & USART_SR_TC)); //Проверка завершения передачи предыдущих данных
  USART1->DR = data; //Передача данных
}

void USART1_Send_Str(char* str)
{
  uint8_t i=0;
  while(str[i])
  {
    USART1_Send_Sym(str[i]);
    i++;
  }
}

void USART1_Send_endln()
{
	USART1_Send_Sym('\r');
	USART1_Send_Sym('\n');
}

void ADC_Configuration(void)
{
  ADC_InitTypeDef  ADC_InitStructure;
  /* PCLK2 is the APB2 clock */
  /* ADCCLK = PCLK2/6 = 72/6 = 12MHz*/
  RCC_ADCCLKConfig(RCC_PCLK2_Div4);

  /* Enable ADC1 clock so that we can talk to it */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE);
  /* Put everything back to power-on defaults */
  ADC_DeInit(ADC1);

  /* ADC1 Configuration ------------------------------------------------------*/
  /* ADC1 and ADC2 operate independently */
  ADC_InitStructure.ADC_Mode = ADC_Mode_Independent;
  /* Disable the scan conversion so we do one at a time */
  ADC_InitStructure.ADC_ScanConvMode = DISABLE;
  /* Don't do contimuous conversions - do them on demand */
  ADC_InitStructure.ADC_ContinuousConvMode = DISABLE;
  /* Start conversin by software, not an external trigger */
  ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None;
  /* Conversions are 12 bit - put them in the lower 12 bits of the result */
  ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
  /* Say how many channels would be used by the sequencer */
  ADC_InitStructure.ADC_NbrOfChannel = 1;

  /* Now do the setup */
  ADC_Init(ADC1, &ADC_InitStructure);
  /* Enable ADC1 */
  ADC_Cmd(ADC1, ENABLE);

  /* Enable ADC1 reset calibaration register */
  ADC_ResetCalibration(ADC1);
  /* Check the end of ADC1 reset calibration register */
  while(ADC_GetResetCalibrationStatus(ADC1));
  /* Start ADC1 calibaration */
  ADC_StartCalibration(ADC1);
  /* Check the end of ADC1 calibration */
  while(ADC_GetCalibrationStatus(ADC1));
}

u16 readADC1(u8 channel){
   ADC_RegularChannelConfig(ADC1, channel, 1, ADC_SampleTime_41Cycles5);
   // начинаем работу
   ADC_SoftwareStartConvCmd(ADC1, ENABLE);
   // ждём пока преобразуется напряжение в код
   while(ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC) == RESET);
   // возвращаем результат
   return ADC_GetConversionValue(ADC1);
}

