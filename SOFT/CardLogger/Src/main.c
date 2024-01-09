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
#include "stm32f0xx_hal.h"

/* USER CODE BEGIN Includes */

#define NET_DATBUFSIZE (1<<6)

#include <string.h>

#define ETH_DISABLED 0
#define ENC28J60 1
#define WIZNET 2

//#define ETH_MODULE ETH_DISABLED
//#define ETH_MODULE ENC28J60
//#define ETH_MODULE WIZNET

#if ETH_MODULE == ENC28J60

#	include "EtherShield.h"

#endif
#if ETH_MODULE == WIZNET

#	define _WIZCHIP_ 5500
#	include "wizchip_conf.h"
#	include "socket.h"

//#	define WIZNET_BURST
//#	define SPI_DMA
#	ifdef SPI_DMA
#		define HAL_SPI_Receive_Auto(a, b, c) HAL_SPI_Receive_DMA(a, b, c)
#		define HAL_SPI_Transmit_Auto(a, b, c) HAL_SPI_Transmit_DMA(a, b, c)
#	else
#		define HAL_SPI_Receive_Auto(a, b, c) HAL_SPI_Receive(a, b, c, 0xffffffff)
#		define HAL_SPI_Transmit_Auto(a, b, c) HAL_SPI_Transmit(a, b, c, 0xffffffff)
#	endif

#	define	NET_LOCAL_PORT	30320
#	define	NET_REMOTE_PORT	30320

#endif

#define error(...) {Error_Handler();}

/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/
SPI_HandleTypeDef hspi1;

UART_HandleTypeDef huart1;

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/

uint32_t i=0;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void Error_Handler(void);
static void MX_GPIO_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_SPI1_Init(void);

/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/

#if ETH_MODULE != ETH_DISABLED
static uint8_t  remote_mac[] = {0xf2, 0x00, 0x00, 0x0a, 0x00, 0x00};
static uint8_t  remote_ip[]  = {10,  180, 239, 1};
#endif

#if ETH_MODULE == ENC28J60
#	define NET_HEADERS_LENGTH (ETH_HEADER_LEN + IP_HEADER_LEN + UDP_HEADER_LEN)
#	define NET_BUFSIZE (NET_DATBUFSIZE + NET_HEADERS_LENGTH)
#	define net_senddatbuf ((uint8_t *)(&net_sendbuf[NET_HEADERS_LENGTH]))
#else
#	define NET_BUFSIZE NET_DATBUFSIZE
#	define net_senddatbuf net_sendbuf
#endif


static uint8_t net_sendbuf[NET_BUFSIZE];

#if ETH_MODULE == ENC28J60

void ES_PingCallback(void) {
}
uint16_t get_udp_data_len(uint8_t *buf)
{
	int16_t i;
	i=(((int16_t)buf[IP_TOTLEN_H_P])<<8)|(buf[IP_TOTLEN_L_P]&0xff);
	i-=IP_HEADER_LEN;
	i-=8;
	if (i<=0){
		i=0;
	}
	return((uint16_t)i);
}
static uint16_t info_data_len = 0;
uint16_t packetloop_icmp_udp(uint8_t *buf,uint16_t plen)
{
	if(eth_type_is_arp_and_my_ip(buf,plen)){
		if (buf[ETH_ARP_OPCODE_L_P]==ETH_ARP_OPCODE_REQ_L_V){
			// is it an arp request 
			make_arp_answer_from_request(buf);
		}
		return 0;
	}
	// check if ip packets are for us:
	if(eth_type_is_ip_and_my_ip(buf,plen)==0){
		return 0;
	}
	if(buf[IP_PROTO_P]==IP_PROTO_ICMP_V && buf[ICMP_TYPE_P]==ICMP_TYPE_ECHOREQUEST_V){
		make_echo_reply_from_request(buf,plen);
		return 0;
	}
	if (buf[IP_PROTO_P]==IP_PROTO_UDP_V) {
		info_data_len=get_udp_data_len(buf);
		return(IP_HEADER_LEN+8+14);
	}
	return 0;
}

uint8_t net_recvbuf[NET_BUFSIZE + 1];
/*void HAL_Delay(__IO uint32_t Delay)
{
	uint32_t tickstart = 0;
	tickstart = HAL_GetTick();
	while((HAL_GetTick() - tickstart) < Delay)
	{
		packetloop_icmp_udp(net_recvbuf, ES_enc28j60PacketReceive(NET_BUF_SIZE, net_recvbuf));
	}
}*/

static uint8_t   local_mac[] = {0x02, 0x00, 0x04, 0x05, 0x01, 0x02};
static uint8_t   local_ip[]  = {10,  180, 239, 2};
static void eth_init() {
	/*ETHERNET_LED_GPIO->BSRR = ETHERNET_LED_PIN;
	HAL_Delay(1000);
	ETHERNET_LED_GPIO->BSRR = ETHERNET_LED_PIN << 16;*/

	ES_enc28j60SpiInit(&hspi1);
	ES_enc28j60Init(local_mac);
	uint8_t enc28j60_rev = ES_enc28j60Revision();
	if (enc28j60_rev <= 0)
		error(2);
	ES_init_ip_arp_udp_tcp(local_mac, local_ip, 80);

	return;
}

static void send(int len) {
	ES_send_udp_data2(net_sendbuf, remote_mac, len, 26524, remote_ip, 36400);
}

#endif
#if ETH_MODULE == WIZNET

static void w5500_cs_select() {
	ETHERNET_LED_GPIO->BSRR = ETHERNET_LED_PIN;
	HAL_GPIO_WritePin(ETHERNET_CS_GPIO, ETHERNET_CS_PIN, GPIO_PIN_RESET); //CS LOW
}
 
static void w5500_cs_deselect() {
	HAL_GPIO_WritePin(ETHERNET_CS_GPIO, ETHERNET_CS_PIN, GPIO_PIN_SET); //CS HIGH
	ETHERNET_LED_GPIO->BSRR = ETHERNET_LED_PIN << 16;
}

#ifdef WIZNET_BURST
static void w5500_read_burst(uint8_t *pBuf, uint16_t len) {
	HAL_SPI_Receive_Auto(&hspi1, pBuf, len);
	return;
}
 
static void w5500_write_burst(uint8_t *pBuf, uint16_t len) {
	HAL_SPI_Transmit_Auto(&hspi1, pBuf, len);
	return;
}
#endif
 
static void w5500_write(uint8_t b) {
	HAL_SPI_Transmit_Auto(&hspi1, &b, 1);
}
static uint8_t w5500_read(void) {
	uint8_t rbuf;
	HAL_SPI_Receive_Auto(&hspi1, &rbuf, 1);
	return rbuf;
}
static int open_net_socket(uint8_t sock_id)
{
	uint8_t sd, sck_state;
	sd = socket(sock_id, Sn_MR_UDP, NET_LOCAL_PORT, 0);//SF_IO_NONBLOCK);
	if(sd != sock_id) {
		error(8);
	}
	do {
		getsockopt(sd , SO_STATUS, &sck_state);
	} while (sck_state != SOCK_UDP);
	return sd;
}

uint8_t bufSize[2][8] = { {2,2,2,2,2,2,2,2},{2,2,2,2,2,2,2,2}};

static int net;
static void eth_init() {

	reg_wizchip_cs_cbfunc(w5500_cs_select, w5500_cs_deselect);
#ifdef W5500_BURST
	reg_wizchip_spiburst_cbfunc(w5500_read_burst, w5500_write_burst);
#endif
	reg_wizchip_spi_cbfunc(w5500_read, w5500_write);
#if _WIZCHIP_ == 5500
	wizphy_reset();
#endif
	if (wizchip_init(bufSize[0], bufSize[1]) != 0)
		error(2);

	wiz_NetInfo netInfo = { .mac 	= {0x02, 0x00, 0x04, 0x05, 0x01, 0x02},			// MAC address
				.ip 	= {10, 180, 239, 2},					// IP address
				.sn 	= {255, 255, 255, 0},					// IP netmask
				.gw 	= {10, 180, 239, 1}};					// IP gateway

#if _WIZCHIP_ != 5100
	uint8_t tmp;
	do {
		tmp = wizphy_getphylink();
		if (tmp == -1) {
			error(4);
		}
	} while (tmp == PHY_LINK_OFF);
#endif

	wizchip_setnetinfo(&netInfo);

	net = open_net_socket(0);
	return;
}

static void send(int len) {
	sendto(net_sendbuf, len, remote_ip, NET_REMOTE_PORT);
}

#endif

#if ETH_MODULE != WIZNET && ETH_MODULE != ENC28J60
#	warning Ethernet is disabled!

static void eth_init() {
}

static void send(int len) {
}

#endif

static void sendAlivePackage() {
	net_senddatbuf[0] = 0xfe;
	net_senddatbuf[1] = 0xfe;
	net_senddatbuf[2] = 0xfe;
	net_senddatbuf[3] = 0xfe;
	send(4);
	net_senddatbuf[0] = 0xff;
	net_senddatbuf[1] = 0xfe;
	net_senddatbuf[2] = 0xfd;
	net_senddatbuf[3] = 0xfc;
}

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
  MX_USART1_UART_Init();
  MX_SPI1_Init();

  /* USER CODE BEGIN 2 */
	ETHERNET_LED_GPIO->BSRR = ETHERNET_LED_PIN;
	eth_init();

	GPIOA->BSRR = LED_STATUS_Pin;

	sendAlivePackage();

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

	card_number = 0;

	uint32_t previousAliveTick = 0;

	while (1) {

		if (!is_reading) { // флаг чтения=1; is_reading is also controlled by interrupts
			uint32_t currentTick = HAL_GetTick();
			if (currentTick - previousAliveTick > 1000) {
				previousAliveTick = currentTick;
				sendAlivePackage();
			}
			continue;
		}

		HAL_Delay(200); // в течение этого времени должно всё передаться. в общем-то если не успевает - то какая-то херня в схеме.

		is_reading = 0;
		timer_out = 0;
		card_number >>= 1;

		memcpy(&net_senddatbuf[4+sizeof(card_number)*0], &card_number, sizeof(card_number));	
		memcpy(&net_senddatbuf[4+sizeof(card_number)*1], &card_number, sizeof(card_number));	// On case of data corruption
		memcpy(&net_senddatbuf[4+sizeof(card_number)*2], &card_number, sizeof(card_number));	// On case of data corruption

		send(4+3*sizeof(card_number));

		card_number = 0;

	}
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */
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
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL2;
  RCC_OscInitStruct.PLL.PREDIV = RCC_PREDIV_DIV1;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

    /**Initializes the CPU, AHB and APB busses clocks 
    */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }

  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART1;
  PeriphClkInit.Usart1ClockSelection = RCC_USART1CLKSOURCE_SYSCLK;
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
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_16;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 7;
  hspi1.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
  hspi1.Init.NSSPMode = SPI_NSS_PULSE_DISABLE;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }

}

/* USART1 init function */
static void MX_USART1_UART_Init(void)
{

  huart1.Instance = USART1;
  huart1.Init.BaudRate = 38400;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }

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
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(SPI1_NSS_GPIO_Port, SPI1_NSS_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, LED_STATUS_Pin|LED_ETH_BUSY_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : DATA_0_Pin DATA_1_Pin */
  GPIO_InitStruct.Pin = DATA_0_Pin|DATA_1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : SPI1_NSS_Pin */
  GPIO_InitStruct.Pin = SPI1_NSS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
  HAL_GPIO_Init(SPI1_NSS_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : LED_STATUS_Pin */
  GPIO_InitStruct.Pin = LED_STATUS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LED_STATUS_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : LED_ETH_BUSY_Pin */
  GPIO_InitStruct.Pin = LED_ETH_BUSY_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
  HAL_GPIO_Init(LED_ETH_BUSY_GPIO_Port, &GPIO_InitStruct);

  /**/
  HAL_I2CEx_EnableFastModePlus(SYSCFG_CFGR1_I2C_FMP_PA10);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI0_1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI0_1_IRQn);

  HAL_NVIC_SetPriority(EXTI4_15_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI4_15_IRQn);

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
	ETHERNET_LED_GPIO->BSRR = ETHERNET_LED_PIN;
	GPIOA->BSRR = LED_STATUS_Pin << 16;
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
