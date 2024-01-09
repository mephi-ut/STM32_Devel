
#include <stdint.h>
#include "stm32f103xb.h"

volatile uint32_t rxne;

void  SD_SendCmd(uint8_t Cmd, uint32_t Arg, uint8_t Crc)
{
  uint32_t i = 0x00;

  uint8_t Frame[6];

  Frame[0] = (Cmd | 0x40); /*!< Construct byte 1 */

  Frame[1] = (uint8_t)(Arg >> 24); /*!< Construct byte 2 */

  Frame[2] = (uint8_t)(Arg >> 16); /*!< Construct byte 3 */

  Frame[3] = (uint8_t)(Arg >> 8); /*!< Construct byte 4 */

  Frame[4] = (uint8_t)(Arg); /*!< Construct byte 5 */

  Frame[5] = (Crc); /*!< Construct CRC: byte 6 */

  for (i = 0; i < 6; i++)
  {
    SPI2->DR = Frame[i]; /*!< Send the Cmd bytes */
    for (int k=0;k<100;k++);
  }

}

void Init_HW (void){

	RCC->APB2ENR |= (RCC_APB2ENR_IOPBEN | RCC_APB2ENR_AFIOEN );	// clock port b on
	RCC->APB1ENR |= RCC_APB1ENR_SPI2EN;// тактирование -  вклы!

	GPIOB->CRH = 0b0;
	GPIOB->CRH = 0b10111000101100110000000000000000;

	SPI2->CR1 = 0b0000001110111101;
	SPI2->CR2 = 0b0;
	SPI2->CR1 |= SPI_CR1_SPE;			// SPI2 - вкыл!
}

int main ( void )
{

    Init_HW();

	for (int k=0;k<10000;k++);
    while (1){

	GPIOB -> BSRR = GPIO_PIN_12;

	for(int i=0; i<100; i++){
	SPI2->DR = 0x0F;
	}

	GPIOB -> BRR = GPIO_PIN_12;
	for (int k=0;k<1000;k++);

	SD_SendCmd(0x40,0x00,0x95);
//	while (SPI2->DR != 0x01);

//while (1);


}


}


