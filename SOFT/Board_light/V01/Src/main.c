/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  *
  * COPYRIGHT(c) 2016 STMicroelectronics
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
#include "stm32f0xx_hal.h"

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/


//values

uint16_t count=0, count_max=100, mode=0, line_sel=1,bank_sel=0,relax=30;
uint8_t 
RED_V[10][6]= 		{{0, 9, 9, 9, 9, 9},
			{0, 9, 9, 9, 9, 9},
			{0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0},
			{0, 9, 9, 9, 9, 9},	    
			{0, 9, 9, 9, 9, 9},
			{0, 9, 7, 5, 3, 1},
			{0, 5, 6, 7, 8, 9},
			{0, 6, 7, 8, 9, 9},
			{0, 9, 7, 5, 3, 1}},

GREEN_V[10][6]=		{{0, 9, 9, 9, 9, 9},
			{0, 0, 0, 0, 0, 0},
			{0, 9, 9, 9, 9, 9},
			{0, 0, 0, 0, 0, 0},
			{0, 9, 7, 5, 3, 0},
			{0, 9, 7, 5, 3, 1},
			{0, 9, 8, 7, 6, 5},
			{0, 5, 6, 7, 8, 9},
			{0, 1, 3, 5, 7, 9},
			{0, 9, 8, 8, 7, 7}},

BLUE_V[10][6]= 		{{0, 9, 9, 9, 9, 9},
			{0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0},
			{0, 9, 9, 9, 9, 9},
			{0, 9, 7, 5, 3, 0},
			{0, 9, 9, 9, 9, 9},
			{0, 9, 7, 5, 3, 1},
			{0, 0, 3, 5, 7, 9},
			{0, 6, 7, 8, 9, 9},
			{0, 9, 8, 7, 6, 5}},

LIGHT_LEVELS[10]=	{0,	2,	4,	8,	16,	32,	48,	64,	72,	100};
void 
reset_light(void),
run_line_1(void),
run_line_2(void),
run_line_3(void),
run_line_4(void),
run_line_5(void);


/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);

/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/

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

  /* USER CODE BEGIN 2 */

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {

run_line_1();
reset_light();

run_line_2();
reset_light();

run_line_3();
reset_light();

run_line_4();
reset_light();

run_line_5();
reset_light();


reset_light();
    for (count=0; count<relax; count++);

    
    if (HAL_GPIO_ReadPin(GPIOF, GPIO_PIN_0) == 1){
    while (HAL_GPIO_ReadPin(GPIOF, GPIO_PIN_0) == 1);
	reset_light();
	mode = 1;
    } 

    if (HAL_GPIO_ReadPin(GPIOF, GPIO_PIN_1) == 1){
    while (HAL_GPIO_ReadPin(GPIOF, GPIO_PIN_1) == 1);
    bank_sel++ ;
    if (bank_sel > 9){bank_sel = 0;};
    } 


    while (mode == 1){
    if (HAL_GPIO_ReadPin(GPIOF, GPIO_PIN_0) == 1){
    while (HAL_GPIO_ReadPin(GPIOF, GPIO_PIN_0) == 1);
	mode = 0;
    } 
    
    if (line_sel == 1){
	run_line_1();
	reset_light();
    }

    if (line_sel == 2){
	run_line_2();
	reset_light();
    }

    if (line_sel == 3){
	run_line_3();
	reset_light();
    }

    if (line_sel == 4){
	run_line_4();
	reset_light();
    }

    if (line_sel == 5){
	run_line_5();
	reset_light();
    }
	for (count = 0; count < count_max*20; count++);

    if (HAL_GPIO_ReadPin(GPIOF, GPIO_PIN_1) == 1){
    while (HAL_GPIO_ReadPin(GPIOF, GPIO_PIN_1) == 1);
    line_sel++ ;
    if (line_sel == 6){line_sel = 1;};
    } 
    
//red
    if (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_9) == 1){
    while (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_9) == 1);
    RED_V[bank_sel][line_sel]++;
    if (RED_V[bank_sel][line_sel] > 9){RED_V[bank_sel][line_sel] = 0;};
    }

//green
    if (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_10) == 1){
    while (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_10) == 1);
    GREEN_V[bank_sel][line_sel]++;
    if (GREEN_V[bank_sel][line_sel] > 9){GREEN_V[bank_sel][line_sel] = 0;};
    }

//blue
    if (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_1) == 1){
    while (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_1) == 1);
    BLUE_V[bank_sel][line_sel]++;
    if (BLUE_V[bank_sel][line_sel] > 9){BLUE_V[bank_sel][line_sel] = 0;};
    }
}
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */

}

  /* USER CODE END 3 */

}

/** System Clock Configuration
*/
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;

  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = 16;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL4;
  RCC_OscInitStruct.PLL.PREDIV = RCC_PREDIV_DIV1;
  HAL_RCC_OscConfig(&RCC_OscInitStruct);

  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0);

  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
}

/** Configure pins as 
        * Analog 
        * Input 
        * Output
        * EVENT_OUT
        * EXTI
*/
void MX_GPIO_Init(void)
{

  GPIO_InitTypeDef GPIO_InitStruct;

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pins : MODE_Pin SELECT_Pin */
  GPIO_InitStruct.Pin = MODE_Pin|SELECT_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLDOWN;
  HAL_GPIO_Init(GPIOF, &GPIO_InitStruct);

  /*Configure GPIO pins : R_Pin G_Pin B_Pin */
  GPIO_InitStruct.Pin = R_Pin|G_Pin|B_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : LINE1_Pin LINE2_Pin LINE3_Pin LINE4_Pin 
                           LINE5_Pin */
  GPIO_InitStruct.Pin = LINE1_Pin|LINE2_Pin|LINE3_Pin|LINE4_Pin 
                          |LINE5_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : SET_B_Pin */
  GPIO_InitStruct.Pin = SET_B_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLDOWN;
  HAL_GPIO_Init(SET_B_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : SET_G_Pin SET_R_Pin */
  GPIO_InitStruct.Pin = SET_G_Pin|SET_R_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLDOWN;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, R_Pin|G_Pin|B_Pin|LINE1_Pin 
                          |LINE2_Pin|LINE3_Pin|LINE4_Pin|LINE5_Pin, GPIO_PIN_RESET);

}

/* USER CODE BEGIN 4 */
void reset_light(void){

HAL_GPIO_WritePin(GPIOA, RED, 0);
HAL_GPIO_WritePin(GPIOA, GREEN, 0);
HAL_GPIO_WritePin(GPIOA, BLUE, 0);
HAL_GPIO_WritePin(GPIOA, LINE1, 0);
HAL_GPIO_WritePin(GPIOA, LINE2, 0);
HAL_GPIO_WritePin(GPIOA, LINE3, 0);
HAL_GPIO_WritePin(GPIOA, LINE4, 0);
HAL_GPIO_WritePin(GPIOA, LINE5, 0);

}

void run_line_1(void){
//ШИМ линии 1
HAL_GPIO_WritePin(GPIOA, LINE1, 1);
    HAL_GPIO_WritePin(GPIOA, RED, 1);
    HAL_GPIO_WritePin(GPIOA, GREEN, 1);
    HAL_GPIO_WritePin(GPIOA, BLUE, 1);

    for (count=0; count<count_max; count++){

    if (LIGHT_LEVELS[RED_V[bank_sel][1]] <= count){HAL_GPIO_WritePin(GPIOA, RED, 0);}
    if (LIGHT_LEVELS[GREEN_V[bank_sel][1]] <= count){HAL_GPIO_WritePin(GPIOA, GREEN, 0);}
    if (LIGHT_LEVELS[BLUE_V[bank_sel][1]] <= count){HAL_GPIO_WritePin(GPIOA, BLUE, 0);}
    
    }
    for (count=0; count<10; count++);
}

void run_line_2(void){
//ШИМ линии 2
HAL_GPIO_WritePin(GPIOA, LINE2, 1);
    HAL_GPIO_WritePin(GPIOA, RED, 1);
    HAL_GPIO_WritePin(GPIOA, GREEN, 1);
    HAL_GPIO_WritePin(GPIOA, BLUE, 1);

    for (count=0; count<count_max; count++){

    if (LIGHT_LEVELS[RED_V[bank_sel][2]] <= count){HAL_GPIO_WritePin(GPIOA, RED, 0);}
    if (LIGHT_LEVELS[GREEN_V[bank_sel][2]] <= count){HAL_GPIO_WritePin(GPIOA, GREEN, 0);}
    if (LIGHT_LEVELS[BLUE_V[bank_sel][2]] <= count){HAL_GPIO_WritePin(GPIOA, BLUE, 0);}
    
    }
    for (count=0; count<10; count++);
}

void run_line_3(void){
//ШИМ линии 3
HAL_GPIO_WritePin(GPIOA, LINE3, 1);
    HAL_GPIO_WritePin(GPIOA, RED, 1);
    HAL_GPIO_WritePin(GPIOA, GREEN, 1);
    HAL_GPIO_WritePin(GPIOA, BLUE, 1);

    for (count=0; count<count_max; count++){

    if (LIGHT_LEVELS[RED_V[bank_sel][3]] <= count){HAL_GPIO_WritePin(GPIOA, RED, 0);}
    if (LIGHT_LEVELS[GREEN_V[bank_sel][3]] <= count){HAL_GPIO_WritePin(GPIOA, GREEN, 0);}
    if (LIGHT_LEVELS[BLUE_V[bank_sel][3]] <= count){HAL_GPIO_WritePin(GPIOA, BLUE, 0);}

    
    }

    for (count=0; count<10; count++);
}

void run_line_4(void){
//ШИМ линии 4
HAL_GPIO_WritePin(GPIOA, LINE4, 1);
    HAL_GPIO_WritePin(GPIOA, RED, 1);
    HAL_GPIO_WritePin(GPIOA, GREEN, 1);
    HAL_GPIO_WritePin(GPIOA, BLUE, 1);

    for (count=0; count<count_max; count++){

    if (LIGHT_LEVELS[RED_V[bank_sel][4]] <= count){HAL_GPIO_WritePin(GPIOA, RED, 0);}
    if (LIGHT_LEVELS[GREEN_V[bank_sel][4]] <= count){HAL_GPIO_WritePin(GPIOA, GREEN, 0);}
    if (LIGHT_LEVELS[BLUE_V[bank_sel][4]] <= count){HAL_GPIO_WritePin(GPIOA, BLUE, 0);}

    
    }
    for (count=0; count<10; count++);
}

void run_line_5(void){
//ШИМ линии 5
HAL_GPIO_WritePin(GPIOA, LINE5, 1);
    HAL_GPIO_WritePin(GPIOA, RED, 1);
    HAL_GPIO_WritePin(GPIOA, GREEN, 1);
    HAL_GPIO_WritePin(GPIOA, BLUE, 1);

    for (count=0; count<count_max; count++){

    if (LIGHT_LEVELS[RED_V[bank_sel][5]] <= count){HAL_GPIO_WritePin(GPIOA, RED, 0);}
    if (LIGHT_LEVELS[GREEN_V[bank_sel][5]] <= count){HAL_GPIO_WritePin(GPIOA, GREEN, 0);}
    if (LIGHT_LEVELS[BLUE_V[bank_sel][5]] <= count){HAL_GPIO_WritePin(GPIOA, BLUE, 0);}

    
    }

    for (count=0; count<10; count++);
}




/* USER CODE END 4 */

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
