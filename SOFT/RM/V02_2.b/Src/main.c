/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  *
  * COPYRIGHT(c) 2017 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f1xx_hal.h"
#include <stdint.h>
#include <stdlib.h>
#define UART_BUF_SIZE 32
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/
SPI_HandleTypeDef hspi1;

UART_HandleTypeDef huart1;
DMA_HandleTypeDef hdma_usart1_rx;

PCD_HandleTypeDef hpcd_USB_FS;

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/

uint8_t UART_Data[8]={'1','2','3','4','5','6','7','8'}, UART_Recv[64],
Uart_Format[2]={'\r','\n'};

uint8_t MM_Speed=10, FM_Speed=10, command_value_conv = 0, Flow_Data_Flag=0;
uint16_t ADC_Recv[8]={0,0,0,0,0,0,0,0}, t_delay = 20, r_delay = 1000, UART_Recv_Len, i=0, watchdog=0;
extern uint8_t direction[3], engine_speed[3];
char command_value[3] = {' ',' ',' '};
int32_t ADC_12_diff = 0, ADC_34_diff=0;
extern int F_enc_count, M_enc_count;

uint32_t Test_Speed = 0;
static uint8_t uart_buf[UART_BUF_SIZE], *uart_buf_parsed, *uart_buf_filled, *uart_buf_end;

// insert from ADC
uint32_t count=0, 
ADC_RCV1,
ADC_RCV2=0, 
ADC_RCV[1024], 
ADC_COUNT=0,
CONF_STAT=0, 
MODE_STAT=0,
SKIP_COUNT=0,
CONT_CLK=0xFFFFFFFF;

uint8_t ADC_RST[8]={0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
LED_ON[2]={0x28,0x11},
ILED_ON[2]={0x28,0x12},
LED_OFF[2]={0x28,0x10},
READ_DATA=0x58,

/* 
WRITE_CONF expand
communication register 0x10 = 0 0 010 0 0 0 write next 24 bit to configuration register (010)
0x00 = 0000 0000
0x3 = 0000 0011 - diffpair channel 1&2 and channel 3&4
0x10 = 0001 0000 - enable buffer, gain = 1 (last 000)
*/

WRITE_CONF[4]={0x10,0x00,0x3,0x10},

/*
WRITE_MODE expand
communication register 0x8 = 0000 1000 write next 24 bit to mode register
0x18 = 0001 1000 - continuous conversion, enable stsus reg transmit, enable internal clock
0x0 - 0000 0000 (Regards, K.O.) by default
0x60 - 0110 0000 - by default
*/

WRITE_MODE[4]={0x8,0x18,0x0,0x60},
ADC_VAL[5]={0,0,0,0,0};

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void Error_Handler(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_SPI1_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_USB_PCD_Init(void);

/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/

struct UART_String {
uint8_t 	Header[2],
		Engine_1_Dir[2], 
		Engine_1_Speed[4], 
		Engine_2_Dir[2], 
		Engine_2_Speed[4],
		ADC_12_diff_Data[9],
		ADC_34_diff_Data[9],
		M_enc_data[9],
		F_enc_data[9],
		End_Of_String[4];
} __attribute__((packed));


struct UART_String UART_Send_String;
/* USER CODE END PFP */

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration----------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_SPI1_Init();
  MX_USART1_UART_Init();
  MX_USB_PCD_Init();

  /* USER CODE BEGIN 2 */
    HAL_GPIO_WritePin(GPIOB,GPIO_PIN_8,GPIO_PIN_SET);
//    for (count=0;count<100000;count++);
    HAL_GPIO_WritePin(GPIOB,GPIO_PIN_8,GPIO_PIN_RESET);
//    for (count=0;count<100000;count++);
    HAL_SPI_Transmit(&hspi1,ILED_ON,2,1000);
    HAL_SPI_Transmit(&hspi1,ADC_RST,6,1000);
    while (HAL_GPIO_ReadPin(GPIOB,GPIO_PIN_9) == 1);
    HAL_SPI_Transmit(&hspi1,WRITE_CONF,4,1000);
    while (HAL_GPIO_ReadPin(GPIOB,GPIO_PIN_9) == 1);
    HAL_SPI_Transmit(&hspi1,WRITE_MODE,4,1000);
    while (HAL_GPIO_ReadPin(GPIOB,GPIO_PIN_9) == 1);

	GPIOA -> BRR = 0b1111;
	GPIOC -> BRR = 0b1111;

    uart_buf_parsed =  uart_buf;
    {
	HAL_UART_Receive_DMA(&huart1, uart_buf, UART_BUF_SIZE);
//	if (r != HAL_OK)
//	    error(r, 0);
    }
    uart_buf_end    = &uart_buf[UART_BUF_SIZE];
  

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	UART_Send_String.Header[0] = 'B';
	UART_Send_String.Header[1] = ' ';
	UART_Send_String.Engine_1_Dir[1] = ' ';
	UART_Send_String.Engine_2_Dir[1] = ' ';

	UART_Send_String.End_Of_String[0] = ' ';
	UART_Send_String.End_Of_String[1] = 'E';
	UART_Send_String.End_Of_String[2] = '\r';
	UART_Send_String.End_Of_String[3] = '\n';

//	HAL_ADC_Start_DMA(&hadc1, (uint32_t *)ADC_Recv, 4);

  while (1)
  {
    if (HAL_GPIO_ReadPin(GPIOB,GPIO_PIN_9) != 1){
    watchdog = 0;
    HAL_SPI_Transmit(&hspi1,LED_ON,2,1000);
    HAL_SPI_TransmitReceive(&hspi1,&READ_DATA,ADC_VAL,5,1000);
    HAL_SPI_Transmit(&hspi1,LED_OFF,2,1000);

        if (ADC_VAL[4] == 0){
	    ADC_RCV1=ADC_VAL[3] + (ADC_VAL[2]<<8) + (ADC_VAL[1]<<16);
	}
        if (ADC_VAL[4] != 0){
	    ADC_RCV2=ADC_VAL[3] + (ADC_VAL[2]<<8) + (ADC_VAL[1]<<16);
	}
	
	if (ADC_RCV1 == 0 || ADC_RCV1 == 0xFFFFFF){
	watchdog=1;
	}
    };

    if (watchdog == 1){
    HAL_GPIO_WritePin(GPIOB,GPIO_PIN_8,GPIO_PIN_SET);
//    for (count=0;count<100000;count++);
    HAL_GPIO_WritePin(GPIOB,GPIO_PIN_8,GPIO_PIN_RESET);
//    for (count=0;count<100000;count++);
    HAL_SPI_Transmit(&hspi1,ADC_RST,6,1000);
    HAL_SPI_Transmit(&hspi1,ILED_ON,2,1000);
    while (HAL_GPIO_ReadPin(GPIOB,GPIO_PIN_9) == 1);
    HAL_SPI_Transmit(&hspi1,WRITE_CONF,4,1000);
    while (HAL_GPIO_ReadPin(GPIOB,GPIO_PIN_9) == 1);
    HAL_SPI_Transmit(&hspi1,WRITE_MODE,4,1000);
    while (HAL_GPIO_ReadPin(GPIOB,GPIO_PIN_9) == 1);

//    for (count=0;count<100000;count++);
    };
	uart_buf_filled = &uart_buf[UART_BUF_SIZE - huart1.hdmarx->Instance->CNDTR];
	if (uart_buf_parsed != uart_buf_filled) {
	HAL_Delay(100);
	UART_Recv_Len = 0;
	while (uart_buf_parsed != uart_buf_filled) {
	    uint16_t outlen;
	    if (uart_buf_filled > uart_buf_parsed) {
		outlen = uart_buf_filled - uart_buf_parsed;
	    } else {
		outlen = uart_buf_end  - uart_buf_parsed;
	    }

	    memcpy(&UART_Recv[UART_Recv_Len], uart_buf_parsed, outlen);

	    UART_Recv_Len += outlen;
	    uart_buf_parsed += outlen;
	    if (uart_buf_parsed >= uart_buf_end)
		uart_buf_parsed = uart_buf;
	}
	}


//	HAL_UART_Receive(&huart1, (uint8_t*)UART_Recv, 8, r_delay);
//	HAL_UART_Transmit(&huart1, (uint8_t*)direction, 3, 500);


//	HAL_UART_Transmit(&huart1, (uint8_t *)&UART_Recv, UART_Recv_Len, t_delay);
if (UART_Recv[0] == 'R'){Flow_Data_Flag = '1';};
if (UART_Recv[0] == 'N'){Flow_Data_Flag = '0';};

// Flow_Data_Flag = '1';
	if (Flow_Data_Flag == '1'){

		UART_Send_String.Engine_1_Dir[0] = direction[1];
		snprintf((char *)UART_Send_String.Engine_1_Speed, sizeof(UART_Send_String.Engine_1_Speed), "%3i", engine_speed[1]);
		UART_Send_String.Engine_1_Speed[3] = ' ';

		UART_Send_String.Engine_2_Dir[0] = direction[2];
		snprintf((char *)UART_Send_String.Engine_2_Speed, sizeof(UART_Send_String.Engine_2_Speed), "%3i", engine_speed[2]);
		UART_Send_String.Engine_2_Speed[3] = ' ';
	
		ADC_12_diff = ADC_RCV1;
//		ADC_12_diff = ADC_Recv[0];
		snprintf((char *)UART_Send_String.ADC_12_diff_Data, sizeof(UART_Send_String.ADC_12_diff_Data), "%8lu", ADC_12_diff);
		UART_Send_String.ADC_12_diff_Data[8] = ' ';

//		ADC_34_diff = ADC_Recv[4];
		ADC_34_diff = ADC_RCV2;
		snprintf((char *)UART_Send_String.ADC_34_diff_Data, sizeof(UART_Send_String.ADC_34_diff_Data), "%8lu", ADC_34_diff);
		UART_Send_String.ADC_34_diff_Data[8] = ' ';

		snprintf((char *)UART_Send_String.M_enc_data, sizeof(UART_Send_String.M_enc_data), "%8i", M_enc_count);
		UART_Send_String.M_enc_data[8] = ' ';

		snprintf((char *)UART_Send_String.F_enc_data, sizeof(UART_Send_String.F_enc_data), "%8i", F_enc_count);
		UART_Send_String.F_enc_data[8] = ' ';


		HAL_UART_Transmit(&huart1, (uint8_t *)&UART_Send_String, sizeof(UART_Send_String), t_delay);
		for (i=0;i<1000;i++);
	}


	if (UART_Recv[0] == 'H'){
	command_value[0] = UART_Recv[4];
	command_value[1] = UART_Recv[5];
	command_value[2] = UART_Recv[6];
	command_value_conv = atoi(command_value);

	if (UART_Recv[1] == '1' && command_value_conv > 0 ){ 
	direction[1] = UART_Recv[2];
	engine_speed[1] = command_value_conv;
	};

	if (UART_Recv[1] == '2' && command_value_conv > 0){ 
	direction[2] = UART_Recv[2];
	engine_speed[2] = command_value_conv;
	};

  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */
	HAL_Delay(20);
	huart1.hdmarx->Instance->CNDTR = UART_BUF_SIZE;
	memset(UART_Recv,0,64);
//	HAL_UART_Transmit(&huart1, (uint8_t *)&UART_Recv, sizeof(UART_Recv), t_delay);

  }
  /* USER CODE END 3 */

}

/** System Clock Configuration
*/
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_PeriphCLKInitTypeDef PeriphClkInit;

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL3;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }

  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USB;
  PeriphClkInit.UsbClockSelection = RCC_USBCLKSOURCE_PLL;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }

    /**Configure the Systick interrupt time 
    */
  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

    /**Configure the Systick 
    */
  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
}

/* SPI1 init function */
static void MX_SPI1_Init(void)
{

  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_4;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }

}

/* USART1 init function */
static void MX_USART1_UART_Init(void)
{

  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }

}

/* USB init function */
static void MX_USB_PCD_Init(void)
{

  hpcd_USB_FS.Instance = USB;
  hpcd_USB_FS.Init.dev_endpoints = 8;
  hpcd_USB_FS.Init.speed = PCD_SPEED_FULL;
  hpcd_USB_FS.Init.ep0_mps = DEP0CTL_MPS_8;
  hpcd_USB_FS.Init.low_power_enable = DISABLE;
  hpcd_USB_FS.Init.lpm_enable = DISABLE;
  hpcd_USB_FS.Init.battery_charging_enable = DISABLE;
  if (HAL_PCD_Init(&hpcd_USB_FS) != HAL_OK)
  {
    Error_Handler();
  }

}

/** 
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void) 
{
  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel5_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel5_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel5_IRQn);

}

/** Configure pins as 
        * Analog 
        * Input 
        * Output
        * EVENT_OUT
        * EXTI
*/
static void MX_GPIO_Init(void)
{

  GPIO_InitTypeDef GPIO_InitStruct;

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, M_1_Pin|M_2_Pin|M_3_Pin|M_4_Pin 
                          |F_1_Pin|F_2_Pin|F_3_Pin|F_4_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(NCS_GPIO_Port, NCS_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : M_1_Pin M_2_Pin M_3_Pin M_4_Pin 
                           F_1_Pin F_2_Pin F_3_Pin F_4_Pin */
  GPIO_InitStruct.Pin = M_1_Pin|M_2_Pin|M_3_Pin|M_4_Pin 
                          |F_1_Pin|F_2_Pin|F_3_Pin|F_4_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : M_enc_Pin F_enc_Pin */
  GPIO_InitStruct.Pin = M_enc_Pin|F_enc_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : UP_Stop_Pin DWN_Stop_Pin ADC_RDY_Pin */
  GPIO_InitStruct.Pin = UP_Stop_Pin|DWN_Stop_Pin|ADC_RDY_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pin : NCS_Pin */
  GPIO_InitStruct.Pin = NCS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(NCS_GPIO_Port, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI0_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI0_IRQn);

  HAL_NVIC_SetPriority(EXTI1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI1_IRQn);

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler */
  /* User can add his own implementation to report the HAL error return state */
  while(1) 
  {
  }
  /* USER CODE END Error_Handler */ 
}

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
