/**
  ******************************************************************************
  * File Name          : main.h
  * Description        : This file contains the common defines of the application
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
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H
  /* Includes ------------------------------------------------------------------*/

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private define ------------------------------------------------------------*/

#define F_motor_1_Pin GPIO_PIN_0
#define F_motor_1_GPIO_Port GPIOC
#define F_motor_2_Pin GPIO_PIN_1
#define F_motor_2_GPIO_Port GPIOC
#define F_motor_3_Pin GPIO_PIN_2
#define F_motor_3_GPIO_Port GPIOC
#define F_motor_4_Pin GPIO_PIN_3
#define F_motor_4_GPIO_Port GPIOC
#define M_motor_1_Pin GPIO_PIN_0
#define M_motor_1_GPIO_Port GPIOA
#define M_motor_2_Pin GPIO_PIN_1
#define M_motor_2_GPIO_Port GPIOA
#define M_motor_3_Pin GPIO_PIN_2
#define M_motor_3_GPIO_Port GPIOA
#define M_motor_4_Pin GPIO_PIN_3
#define M_motor_4_GPIO_Port GPIOA
#define M_encoder_Pin GPIO_PIN_0
#define M_encoder_GPIO_Port GPIOB
#define F_encoder_Pin GPIO_PIN_1
#define F_encoder_GPIO_Port GPIOB
#define Up_ender_Pin GPIO_PIN_10
#define Up_ender_GPIO_Port GPIOC
#define Down_ender_Pin GPIO_PIN_11
#define Down_ender_GPIO_Port GPIOC
#define M_enc_Pin GPIO_PIN_6
#define M_enc_GPIO_Port GPIOB
#define F_enc_Pin GPIO_PIN_7
#define F_enc_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

/**
  * @}
  */ 

/**
  * @}
*/ 

#endif /* __MAIN_H */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/