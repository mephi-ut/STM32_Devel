#include <stdint.h>
#include "system_stm32f10x.h"
#include "system_stm32f10x.c"

#define SD_BUFSIZE 512
#define SD_BUFVALUES (SD_BUFSIZE / (sizeof(uint16_t)))


#define GPIO_Pin_0                 ((uint16_t)0x0001)  /*!< Pin 0 selected */
#define GPIO_Pin_1                 ((uint16_t)0x0002)  /*!< Pin 1 selected */
#define GPIO_Pin_2                 ((uint16_t)0x0004)  /*!< Pin 2 selected */
#define GPIO_Pin_3                 ((uint16_t)0x0008)  /*!< Pin 3 selected */
#define GPIO_Pin_4                 ((uint16_t)0x0010)  /*!< Pin 4 selected */
#define GPIO_Pin_5                 ((uint16_t)0x0020)  /*!< Pin 5 selected */
#define GPIO_Pin_6                 ((uint16_t)0x0040)  /*!< Pin 6 selected */
#define GPIO_Pin_7                 ((uint16_t)0x0080)  /*!< Pin 7 selected */
#define GPIO_Pin_8                 ((uint16_t)0x0100)  /*!< Pin 8 selected */
#define GPIO_Pin_9                 ((uint16_t)0x0200)  /*!< Pin 9 selected */
#define GPIO_Pin_10                ((uint16_t)0x0400)  /*!< Pin 10 selected */
#define GPIO_Pin_11                ((uint16_t)0x0800)  /*!< Pin 11 selected */
#define GPIO_Pin_12                ((uint16_t)0x1000)  /*!< Pin 12 selected */
#define GPIO_Pin_13                ((uint16_t)0x2000)  /*!< Pin 13 selected */
#define GPIO_Pin_14                ((uint16_t)0x4000)  /*!< Pin 14 selected */
#define GPIO_Pin_15                ((uint16_t)0x8000)  /*!< Pin 15 selected */
#define GPIO_Pin_All               ((uint16_t)0xFFFF)  /*!< All pins selected */

#define SPI_Direction_2Lines_FullDuplex ((uint16_t)0x0000)
#define SPI_Mode_Master                 ((uint16_t)0x0104)
#define SPI_DataSize_8b                 ((uint16_t)0x0000)
#define SPI_CPOL_High                   ((uint16_t)0x0002)
#define SPI_CPHA_2Edge                  ((uint16_t)0x0001)


#define SPI_NSS_Soft                    ((uint16_t)0x0200)
#define SPI_NSS_Hard                    ((uint16_t)0x0000)
#define IS_SPI_NSS(NSS) (((NSS) == SPI_NSS_Soft) || ((NSS) == SPI_NSS_Hard))
#define SPI_BaudRatePrescaler_2         ((uint16_t)0x0000)
#define SPI_BaudRatePrescaler_4         ((uint16_t)0x0008)
#define SPI_BaudRatePrescaler_8         ((uint16_t)0x0010)
#define SPI_BaudRatePrescaler_16        ((uint16_t)0x0018)
#define SPI_BaudRatePrescaler_32        ((uint16_t)0x0020)
#define SPI_BaudRatePrescaler_64        ((uint16_t)0x0028)
#define SPI_BaudRatePrescaler_128       ((uint16_t)0x0030)
#define SPI_BaudRatePrescaler_256       ((uint16_t)0x0038)
#define IS_SPI_BAUDRATE_PRESCALER(PRESCALER) (((PRESCALER) == SPI_BaudRatePrescaler_2) || \
                                              ((PRESCALER) == SPI_BaudRatePrescaler_4) || \
                                              ((PRESCALER) == SPI_BaudRatePrescaler_8) || \
                                              ((PRESCALER) == SPI_BaudRatePrescaler_16) || \
                                              ((PRESCALER) == SPI_BaudRatePrescaler_32) || \
                                              ((PRESCALER) == SPI_BaudRatePrescaler_64) || \
                                              ((PRESCALER) == SPI_BaudRatePrescaler_128) || \
                                              ((PRESCALER) == SPI_BaudRatePrescaler_256))

#define SPI_FirstBit_MSB                ((uint16_t)0x0000)
#define SPI_FirstBit_LSB                ((uint16_t)0x0080)
#define IS_SPI_FIRST_BIT(BIT) (((BIT) == SPI_FirstBit_MSB) ||  ((BIT) == SPI_FirstBit_LSB))


#define SD_CMD_GO_IDLE_STATE          0   /*!< CMD0 = 0x40 */
#define SD_CMD_SEND_OP_COND           1   /*!< CMD1 = 0x41 */
#define SD_CMD_SEND_CSD               9   /*!< CMD9 = 0x49 */
#define SD_CMD_SEND_CID               10  /*!< CMD10 = 0x4A */
#define SD_CMD_STOP_TRANSMISSION      12  /*!< CMD12 = 0x4C */
#define SD_CMD_SEND_STATUS            13  /*!< CMD13 = 0x4D */
#define SD_CMD_SET_BLOCKLEN           16  /*!< CMD16 = 0x50 */
#define SD_CMD_READ_SINGLE_BLOCK      17  /*!< CMD17 = 0x51 */
#define SD_CMD_READ_MULT_BLOCK        18  /*!< CMD18 = 0x52 */
#define SD_CMD_SET_BLOCK_COUNT        23  /*!< CMD23 = 0x57 */
#define SD_CMD_WRITE_SINGLE_BLOCK     24  /*!< CMD24 = 0x58 */
#define SD_CMD_WRITE_MULT_BLOCK       25  /*!< CMD25 = 0x59 */
#define SD_CMD_PROG_CSD               27  /*!< CMD27 = 0x5B */
#define SD_CMD_SET_WRITE_PROT         28  /*!< CMD28 = 0x5C */
#define SD_CMD_CLR_WRITE_PROT         29  /*!< CMD29 = 0x5D */
#define SD_CMD_SEND_WRITE_PROT        30  /*!< CMD30 = 0x5E */
#define SD_CMD_SD_ERASE_GRP_START     32  /*!< CMD32 = 0x60 */
#define SD_CMD_SD_ERASE_GRP_END       33  /*!< CMD33 = 0x61 */
#define SD_CMD_UNTAG_SECTOR           34  /*!< CMD34 = 0x62 */
#define SD_CMD_ERASE_GRP_START        35  /*!< CMD35 = 0x63 */
#define SD_CMD_ERASE_GRP_END          36  /*!< CMD36 = 0x64 */
#define SD_CMD_UNTAG_ERASE_GROUP      37  /*!< CMD37 = 0x65 */
#define SD_CMD_ERASE                  38  /*!< CMD38 = 0x66 */






#define SD_SPI                           SPI1
#define SD_SPI_CLK                       RCC_APB2Periph_SPI1
#define SD_SPI_SCK_PIN                   GPIO_Pin_5                  /* PA.05 */
#define SD_SPI_SCK_GPIO_PORT             GPIOA                       /* GPIOA */
#define SD_SPI_SCK_GPIO_CLK              RCC_APB2Periph_GPIOA
#define SD_SPI_MISO_PIN                  GPIO_Pin_6                  /* PA.06 */
#define SD_SPI_MISO_GPIO_PORT            GPIOA                       /* GPIOA */
#define SD_SPI_MISO_GPIO_CLK             RCC_APB2Periph_GPIOA
#define SD_SPI_MOSI_PIN                  GPIO_Pin_7                  /* PA.07 */
#define SD_SPI_MOSI_GPIO_PORT            GPIOA                       /* GPIOA */
#define SD_SPI_MOSI_GPIO_CLK             RCC_APB2Periph_GPIOA
#define SD_CS_PIN                        GPIO_Pin_4                 /* PC.12 */
#define SD_CS_GPIO_PORT                  GPIOA                       /* GPIOC */
#define SD_CS_GPIO_CLK                   RCC_APB2Periph_GPIOA
#define RCC_APB2Periph_GPIOA             ((uint32_t)0x00000004)
#define RCC_APB2Periph_SPI1              ((uint32_t)0x00001000)
#define IS_RCC_APB2_PERIPH(PERIPH) ((((PERIPH) & 0xFFC00002) == 0x00) && ((PERIPH) != 0x00))

#define CR1_CLEAR_Mask       ((uint16_t)0x3040)
#define SPI_Mode_Select      ((uint16_t)0xF7FF)

#define CR1_SPE_Set          ((uint16_t)0x0040)
#define CR1_SPE_Reset        ((uint16_t)0xFFBF)

#define SD_CS_LOW()     GPIO_ResetBits(SD_CS_GPIO_PORT, SD_CS_PIN)
#define SD_CS_HIGH()    GPIO_SetBits(SD_CS_GPIO_PORT, SD_CS_PIN)
#define SD_DUMMY_BYTE   0xFF



#define SPI_I2S_FLAG_RXNE               ((uint16_t)0x0001)
#define SPI_I2S_FLAG_TXE                ((uint16_t)0x0002)
#define I2S_FLAG_CHSIDE                 ((uint16_t)0x0004)
#define I2S_FLAG_UDR                    ((uint16_t)0x0008)
#define SPI_FLAG_CRCERR                 ((uint16_t)0x0010)
#define SPI_FLAG_MODF                   ((uint16_t)0x0020)
#define SPI_I2S_FLAG_OVR                ((uint16_t)0x0040)
#define SPI_I2S_FLAG_BSY                ((uint16_t)0x0080)
#define IS_SPI_I2S_CLEAR_FLAG(FLAG) (((FLAG) == SPI_FLAG_CRCERR))
#define IS_SPI_I2S_GET_FLAG(FLAG) (((FLAG) == SPI_I2S_FLAG_BSY) || ((FLAG) == SPI_I2S_FLAG_OVR) || \
                                   ((FLAG) == SPI_FLAG_MODF) || ((FLAG) == SPI_FLAG_CRCERR) || \
                                   ((FLAG) == I2S_FLAG_UDR) || ((FLAG) == I2S_FLAG_CHSIDE) || \
                                   ((FLAG) == SPI_I2S_FLAG_TXE) || ((FLAG) == SPI_I2S_FLAG_RXNE))




#ifdef  USE_FULL_ASSERT
  #define assert_param(expr) ((expr) ? (void)0 : assert_failed((uint8_t *)__FILE__, __LINE__))
  void assert_failed(uint8_t* file, uint32_t line);
#else
  #define assert_param(expr) ((void)0)
#endif /* USE_FULL_ASSERT */


typedef enum {FAILED = 0, PASSED = !FAILED} TestStatus;

int status = 10;
volatile long int aa=0, bb;
uint16_t SDWriteBuffer[SD_BUFVALUES];
TestStatus TransferStatus = FAILED;
uint16_t SD_Status = 0xFFFF;
uint16_t writeBufFilled = 0;
volatile uint32_t SDWriteOffset  = 0;
volatile uint16_t ADC1ConvertedValue = 0;
uint16_t Buffer1[256] = {0}, Buffer2[256] = {0};
uint8_t  BuffReady = 0, BuffCount = 0, Rstatus = 1, Wstatus = 2, check = 0;

uint16_t TMSTP = 0;



typedef struct
{
  uint32_t SYSCLK_Frequency;  /*!< returns SYSCLK clock frequency expressed in Hz */
  uint32_t HCLK_Frequency;    /*!< returns HCLK clock frequency expressed in Hz */
  uint32_t PCLK1_Frequency;   /*!< returns PCLK1 clock frequency expressed in Hz */
  uint32_t PCLK2_Frequency;   /*!< returns PCLK2 clock frequency expressed in Hz */
  uint32_t ADCCLK_Frequency;  /*!< returns ADCCLK clock frequency expressed in Hz */
}RCC_ClocksTypeDef;





typedef struct
{
  uint16_t SPI_Direction;           /*!< Specifies the SPI unidirectional or bidirectional data mode.
                                         This parameter can be a value of @ref SPI_data_direction */

  uint16_t SPI_Mode;                /*!< Specifies the SPI operating mode.
                                         This parameter can be a value of @ref SPI_mode */

  uint16_t SPI_DataSize;            /*!< Specifies the SPI data size.
                                         This parameter can be a value of @ref SPI_data_size */

  uint16_t SPI_CPOL;                /*!< Specifies the serial clock steady state.
                                         This parameter can be a value of @ref SPI_Clock_Polarity */

  uint16_t SPI_CPHA;                /*!< Specifies the clock active edge for the bit capture.
                                         This parameter can be a value of @ref SPI_Clock_Phase */

  uint16_t SPI_NSS;                 /*!< Specifies whether the NSS signal is managed by
                                         hardware (NSS pin) or by software using the SSI bit.
                                         This parameter can be a value of @ref SPI_Slave_Select_management */
 
  uint16_t SPI_BaudRatePrescaler;   /*!< Specifies the Baud Rate prescaler value which will be
                                         used to configure the transmit and receive SCK clock.
                                         This parameter can be a value of @ref SPI_BaudRate_Prescaler.
                                         @note The communication clock is derived from the master
                                               clock. The slave clock does not need to be set. */

  uint16_t SPI_FirstBit;            /*!< Specifies whether data transfers start from MSB or LSB bit.
                                         This parameter can be a value of @ref SPI_MSB_LSB_transmission */

  uint16_t SPI_CRCPolynomial;       /*!< Specifies the polynomial used for the CRC calculation. */
}SPI_InitTypeDef;




typedef enum
{ Bit_RESET = 0,
  Bit_SET
}BitAction;




typedef enum
{ 
  GPIO_Speed_10MHz = 1,
  GPIO_Speed_2MHz, 
  GPIO_Speed_50MHz
}GPIOSpeed_TypeDef;

/** 
  * @brief  Configuration Mode enumeration  
  */

typedef enum
{ GPIO_Mode_AIN = 0x0,
  GPIO_Mode_IN_FLOATING = 0x04,
  GPIO_Mode_IPD = 0x28,
  GPIO_Mode_IPU = 0x48,
  GPIO_Mode_Out_OD = 0x14,
  GPIO_Mode_Out_PP = 0x10,
  GPIO_Mode_AF_OD = 0x1C,
  GPIO_Mode_AF_PP = 0x18
}GPIOMode_TypeDef;



typedef struct
{
  uint16_t GPIO_Pin;             /*!< Specifies the GPIO pins to be configured.
                                      This parameter can be any value of @ref GPIO_pins_define */

  GPIOSpeed_TypeDef GPIO_Speed;  /*!< Specifies the speed for the selected pins.
                                      This parameter can be a value of @ref GPIOSpeed_TypeDef */

  GPIOMode_TypeDef GPIO_Mode;    /*!< Specifies the operating mode for the selected pins.
                                      This parameter can be a value of @ref GPIOMode_TypeDef */
}GPIO_InitTypeDef;


typedef enum
{
/**
  * @brief  SD reponses and error flags
  */
  SD_RESPONSE_NO_ERROR      = (0x00),
  SD_IN_IDLE_STATE          = (0x01),
  SD_ERASE_RESET            = (0x02),
  SD_ILLEGAL_COMMAND        = (0x04),
  SD_COM_CRC_ERROR          = (0x08),
  SD_ERASE_SEQUENCE_ERROR   = (0x10),
  SD_ADDRESS_ERROR          = (0x20),
  SD_PARAMETER_ERROR        = (0x40),
  SD_RESPONSE_FAILURE       = (0xFF),

/**
  * @brief  Data response error
  */
  SD_DATA_OK                = (0x05),
  SD_DATA_CRC_ERROR         = (0x0B),
  SD_DATA_WRITE_ERROR       = (0x0D),
  SD_DATA_OTHER_ERROR       = (0xFF)
} SD_Error;




void SD_LowLevel_Init(void);
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);
void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);
void SPI_Init(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct);
void SPI_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint8_t SD_WriteByte(uint8_t byte);
uint8_t SD_ReadByte(void);
FlagStatus SPI_I2S_GetFlagStatus(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
void SPI_I2S_SendData(SPI_TypeDef* SPIx, uint16_t Data);
uint16_t SPI_I2S_ReceiveData(SPI_TypeDef* SPIx);
SD_Error SD_GoIdleState(void);
void SD_SendCmd(uint8_t Cmd, uint32_t Arg, uint8_t Crc);
SD_Error SD_GetResponse(uint8_t Response);
uint8_t SD_GetDataResponse(void);







FlagStatus SPI_I2S_GetFlagStatus(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG)
{
  FlagStatus bitstatus = RESET;
  /* Check the parameters */
  assert_param(IS_SPI_ALL_PERIPH(SPIx));
  assert_param(IS_SPI_I2S_GET_FLAG(SPI_I2S_FLAG));
  /* Check the status of the specified SPI/I2S flag */
  if ((SPIx->SR & SPI_I2S_FLAG) != (uint16_t)RESET)
  {
    /* SPI_I2S_FLAG is set */
    bitstatus = SET;
  }
  else
  {
    /* SPI_I2S_FLAG is reset */
    bitstatus = RESET;
  }
  /* Return the SPI_I2S_FLAG status */
  return  bitstatus;
}


void SPI_I2S_SendData(SPI_TypeDef* SPIx, uint16_t Data)
{
  /* Check the parameters */
  assert_param(IS_SPI_ALL_PERIPH(SPIx));
  
  /* Write in the DR register the data to be sent */
  SPIx->DR = Data;
}



uint16_t SPI_I2S_ReceiveData(SPI_TypeDef* SPIx)
{
  /* Check the parameters */
  assert_param(IS_SPI_ALL_PERIPH(SPIx));
  
  /* Return the data in the DR register */
  return SPIx->DR;
}



uint8_t SD_WriteByte(uint8_t Data)
{
  /*!< Wait until the transmit buffer is empty */
  while(SPI_I2S_GetFlagStatus(SD_SPI, SPI_I2S_FLAG_TXE) == RESET)
  {
  }
  
  /*!< Send the byte */
  SPI_I2S_SendData(SD_SPI, Data);
  
  /*!< Wait to receive a byte*/
  while(SPI_I2S_GetFlagStatus(SD_SPI, SPI_I2S_FLAG_RXNE) == RESET)
  {
  }
  
  /*!< Return the byte read from the SPI bus */ 
  return SPI_I2S_ReceiveData(SD_SPI);
}



void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct)
{
  uint32_t currentmode = 0x00, currentpin = 0x00, pinpos = 0x00, pos = 0x00;
  uint32_t tmpreg = 0x00, pinmask = 0x00;
  /* Check the parameters */
  assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
  assert_param(IS_GPIO_MODE(GPIO_InitStruct->GPIO_Mode));
  assert_param(IS_GPIO_PIN(GPIO_InitStruct->GPIO_Pin));  
  
/*---------------------------- GPIO Mode Configuration -----------------------*/
  currentmode = ((uint32_t)GPIO_InitStruct->GPIO_Mode) & ((uint32_t)0x0F);
  if ((((uint32_t)GPIO_InitStruct->GPIO_Mode) & ((uint32_t)0x10)) != 0x00)
  { 
    /* Check the parameters */
    assert_param(IS_GPIO_SPEED(GPIO_InitStruct->GPIO_Speed));
    /* Output mode */
    currentmode |= (uint32_t)GPIO_InitStruct->GPIO_Speed;
  }
/*---------------------------- GPIO CRL Configuration ------------------------*/
  /* Configure the eight low port pins */
  if (((uint32_t)GPIO_InitStruct->GPIO_Pin & ((uint32_t)0x00FF)) != 0x00)
  {
    tmpreg = GPIOx->CRL;
    for (pinpos = 0x00; pinpos < 0x08; pinpos++)
    {
      pos = ((uint32_t)0x01) << pinpos;
      /* Get the port pins position */
      currentpin = (GPIO_InitStruct->GPIO_Pin) & pos;
      if (currentpin == pos)
      {
        pos = pinpos << 2;
        /* Clear the corresponding low control register bits */
        pinmask = ((uint32_t)0x0F) << pos;
        tmpreg &= ~pinmask;
        /* Write the mode configuration in the corresponding bits */
        tmpreg |= (currentmode << pos);
        /* Reset the corresponding ODR bit */
        if (GPIO_InitStruct->GPIO_Mode == GPIO_Mode_IPD)
        {
          GPIOx->BRR = (((uint32_t)0x01) << pinpos);
        }
        else
        {
          /* Set the corresponding ODR bit */
          if (GPIO_InitStruct->GPIO_Mode == GPIO_Mode_IPU)
          {
            GPIOx->BSRR = (((uint32_t)0x01) << pinpos);
          }
        }
      }
    }
    GPIOx->CRL = tmpreg;
  }

/*---------------------------- GPIO CRH Configuration ------------------------*/
  /* Configure the eight high port pins */
  if (GPIO_InitStruct->GPIO_Pin > 0x00FF)
  {
    tmpreg = GPIOx->CRH;
    for (pinpos = 0x00; pinpos < 0x08; pinpos++)
    {
      pos = (((uint32_t)0x01) << (pinpos + 0x08));
      /* Get the port pins position */
      currentpin = ((GPIO_InitStruct->GPIO_Pin) & pos);
      if (currentpin == pos)
      {
        pos = pinpos << 2;
        /* Clear the corresponding high control register bits */
        pinmask = ((uint32_t)0x0F) << pos;
        tmpreg &= ~pinmask;
        /* Write the mode configuration in the corresponding bits */
        tmpreg |= (currentmode << pos);
        /* Reset the corresponding ODR bit */
        if (GPIO_InitStruct->GPIO_Mode == GPIO_Mode_IPD)
        {
          GPIOx->BRR = (((uint32_t)0x01) << (pinpos + 0x08));
        }
        /* Set the corresponding ODR bit */
        if (GPIO_InitStruct->GPIO_Mode == GPIO_Mode_IPU)
        {
          GPIOx->BSRR = (((uint32_t)0x01) << (pinpos + 0x08));
        }
      }
    }
    GPIOx->CRH = tmpreg;
  }
}



void SPI_Init(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct)
{
  uint16_t tmpreg = 0;
  
  /* check the parameters */
  assert_param(IS_SPI_ALL_PERIPH(SPIx));   
  
  /* Check the SPI parameters */
  assert_param(IS_SPI_DIRECTION_MODE(SPI_InitStruct->SPI_Direction));
  assert_param(IS_SPI_MODE(SPI_InitStruct->SPI_Mode));
  assert_param(IS_SPI_DATASIZE(SPI_InitStruct->SPI_DataSize));
  assert_param(IS_SPI_CPOL(SPI_InitStruct->SPI_CPOL));
  assert_param(IS_SPI_CPHA(SPI_InitStruct->SPI_CPHA));
  assert_param(IS_SPI_NSS(SPI_InitStruct->SPI_NSS));
  assert_param(IS_SPI_BAUDRATE_PRESCALER(SPI_InitStruct->SPI_BaudRatePrescaler));
  assert_param(IS_SPI_FIRST_BIT(SPI_InitStruct->SPI_FirstBit));
  assert_param(IS_SPI_CRC_POLYNOMIAL(SPI_InitStruct->SPI_CRCPolynomial));

/*---------------------------- SPIx CR1 Configuration ------------------------*/
  /* Get the SPIx CR1 value */
  tmpreg = SPIx->CR1;
  /* Clear BIDIMode, BIDIOE, RxONLY, SSM, SSI, LSBFirst, BR, MSTR, CPOL and CPHA bits */
  tmpreg &= CR1_CLEAR_Mask;
  /* Configure SPIx: direction, NSS management, first transmitted bit, BaudRate prescaler
     master/salve mode, CPOL and CPHA */
  /* Set BIDImode, BIDIOE and RxONLY bits according to SPI_Direction value */
  /* Set SSM, SSI and MSTR bits according to SPI_Mode and SPI_NSS values */
  /* Set LSBFirst bit according to SPI_FirstBit value */
  /* Set BR bits according to SPI_BaudRatePrescaler value */
  /* Set CPOL bit according to SPI_CPOL value */
  /* Set CPHA bit according to SPI_CPHA value */
  tmpreg |= (uint16_t)((uint32_t)SPI_InitStruct->SPI_Direction | SPI_InitStruct->SPI_Mode |
                  SPI_InitStruct->SPI_DataSize | SPI_InitStruct->SPI_CPOL |  
                  SPI_InitStruct->SPI_CPHA | SPI_InitStruct->SPI_NSS |  
                  SPI_InitStruct->SPI_BaudRatePrescaler | SPI_InitStruct->SPI_FirstBit);
  /* Write to SPIx CR1 */
  SPIx->CR1 = tmpreg;
  
  /* Activate the SPI mode (Reset I2SMOD bit in I2SCFGR register) */
  SPIx->I2SCFGR &= SPI_Mode_Select;

/*---------------------------- SPIx CRCPOLY Configuration --------------------*/
  /* Write to SPIx CRCPOLY */
  SPIx->CRCPR = SPI_InitStruct->SPI_CRCPolynomial;
}


void SPI_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState)
{
  /* Check the parameters */
  assert_param(IS_SPI_ALL_PERIPH(SPIx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));
  if (NewState != DISABLE)
  {
    /* Enable the selected SPI peripheral */
    SPIx->CR1 |= CR1_SPE_Set;
  }
  else
  {
    /* Disable the selected SPI peripheral */
    SPIx->CR1 &= CR1_SPE_Reset;
  }
}


void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
{
  /* Check the parameters */
  assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
  assert_param(IS_GPIO_PIN(GPIO_Pin));
  
  GPIOx->BSRR = GPIO_Pin;
}



void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState)
{
  /* Check the parameters */
  assert_param(IS_RCC_APB2_PERIPH(RCC_APB2Periph));
  assert_param(IS_FUNCTIONAL_STATE(NewState));
  if (NewState != DISABLE)
  {
    RCC->APB2ENR |= RCC_APB2Periph;
  }
  else
  {
    RCC->APB2ENR &= ~RCC_APB2Periph;
  }
}

void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
{
  /* Check the parameters */
  assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
  assert_param(IS_GPIO_PIN(GPIO_Pin));
  
  GPIOx->BRR = GPIO_Pin;
}





void SD_LowLevel_Init(void)
{
  GPIO_InitTypeDef  GPIO_InitStructure;
  SPI_InitTypeDef   SPI_InitStructure;

  /*!< SD_SPI_CS_GPIO, SD_SPI_MOSI_GPIO, SD_SPI_MISO_GPIO, SD_SPI_DETECT_GPIO 
       and SD_SPI_SCK_GPIO Periph clock enable */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);

  /*!< SD_SPI Periph clock enable */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI1, ENABLE); 

  
  /*!< Configure SD_SPI pins: SCK */
  GPIO_InitStructure.GPIO_Pin = SD_SPI_SCK_PIN |  SD_SPI_MOSI_PIN | SD_SPI_MISO_PIN;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_Init(SD_SPI_SCK_GPIO_PORT, &GPIO_InitStructure);

  /*!< Configure SD_SPI_CS_PIN pin: SD Card CS pin */
  GPIO_InitStructure.GPIO_Pin = SD_CS_PIN;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
  GPIO_Init(SD_CS_GPIO_PORT, &GPIO_InitStructure);

  /*!< SD_SPI Config */
  SPI_InitStructure.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
  SPI_InitStructure.SPI_Mode = SPI_Mode_Master;
  SPI_InitStructure.SPI_DataSize = SPI_DataSize_8b;
  SPI_InitStructure.SPI_CPOL = SPI_CPOL_High;
  SPI_InitStructure.SPI_CPHA = SPI_CPHA_2Edge;
  SPI_InitStructure.SPI_NSS = SPI_NSS_Soft;
  SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_4;

  SPI_InitStructure.SPI_FirstBit = SPI_FirstBit_MSB;
  SPI_InitStructure.SPI_CRCPolynomial = 7;
  SPI_Init(SD_SPI, &SPI_InitStructure);
  
  SPI_Cmd(SD_SPI, ENABLE); /*!< SD_SPI enable */
}



SD_Error SD_GoIdleState(void)
{
  /*!< SD chip select low */
  SD_CS_LOW();
  
  /*!< Send CMD0 (SD_CMD_GO_IDLE_STATE) to put SD in SPI mode */
  SD_SendCmd(SD_CMD_GO_IDLE_STATE, 0, 0x95);
  
  /*!< Wait for In Idle State Response (R1 Format) equal to 0x01 */
  if (SD_GetResponse(SD_IN_IDLE_STATE))
  {
    /*!< No Idle State Response: return response failue */
    return SD_RESPONSE_FAILURE;
  }
  /*----------Activates the card initialization process-----------*/
  do
  {
    /*!< SD chip select high */
    SD_CS_HIGH();
    
    /*!< Send Dummy byte 0xFF */
    SD_WriteByte(SD_DUMMY_BYTE);
    
    /*!< SD chip select low */
    SD_CS_LOW();
    
    /*!< Send CMD1 (Activates the card process) until response equal to 0x0 */
    SD_SendCmd(SD_CMD_SEND_OP_COND, 0, 0xFF);
    /*!< Wait for no error Response (R1 Format) equal to 0x00 */
  }
  while (SD_GetResponse(SD_RESPONSE_NO_ERROR));
  
  /*!< SD chip select high */
  SD_CS_HIGH();
  
  /*!< Send dummy byte 0xFF */
  SD_WriteByte(SD_DUMMY_BYTE);
  
  return SD_RESPONSE_NO_ERROR;
}


void SD_SendCmd(uint8_t Cmd, uint32_t Arg, uint8_t Crc)
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
    SD_WriteByte(Frame[i]); /*!< Send the Cmd bytes */
  }
}


SD_Error SD_GetResponse(uint8_t Response)
{
  uint32_t Count = 0xFFF;

  /*!< Check if response is got or a timeout is happen */
  while ((SD_ReadByte() != Response) && Count)
  {
    Count--;
  }
  if (Count == 0)
  {
    /*!< After time out */
    return SD_RESPONSE_FAILURE;
  }
  else
  {
    /*!< Right response got */
    return SD_RESPONSE_NO_ERROR;
  }
}

uint8_t SD_ReadByte(void)
{
  uint8_t Data = 0;
  
  /*!< Wait until the transmit buffer is empty */
  while (SPI_I2S_GetFlagStatus(SD_SPI, SPI_I2S_FLAG_TXE) == RESET)
  {
  }
  /*!< Send the byte */
  SPI_I2S_SendData(SD_SPI, SD_DUMMY_BYTE);

  /*!< Wait until a data is received */
  while (SPI_I2S_GetFlagStatus(SD_SPI, SPI_I2S_FLAG_RXNE) == RESET)
  {
  }
  /*!< Get the received data */
  Data = SPI_I2S_ReceiveData(SD_SPI);

  /*!< Return the shifted data */
  return Data;
}

uint8_t SD_GetDataResponse(void)
{
  uint32_t i = 0;
  uint8_t response, rvalue;

  while (i <= 64)
  {
    /*!< Read resonse */
    response = SD_ReadByte();
    /*!< Mask unused bits */
    response &= 0x1F;
    switch (response)
    {
      case SD_DATA_OK:
      {
        rvalue = SD_DATA_OK;
        break;
      }
      case SD_DATA_CRC_ERROR:
        return SD_DATA_CRC_ERROR;
      case SD_DATA_WRITE_ERROR:
        return SD_DATA_WRITE_ERROR;
      default:
      {
        rvalue = SD_DATA_OTHER_ERROR;
        break;
      }
    }
    /*!< Exit loop in case of data ok */
    if (rvalue == SD_DATA_OK)
      break;
    /*!< Increment loop counter */
    i++;
  }

  /*!< Wait null data */
  while (SD_ReadByte() == 0);

  /*!< Return response */
  return response;
}


SD_Error SD_Init(void)
{
  uint32_t i = 0;

  /*!< Initialize SD_SPI */
  SD_LowLevel_Init(); 

  /*!< SD chip select high */
  SD_CS_HIGH();

  /*!< Send dummy byte 0xFF, 10 times with CS high */
  /*!< Rise CS and MOSI for 80 clocks cycles */
  for (i = 0; i <= 9; i++)
  {
    /*!< Send dummy byte 0xFF */
    SD_WriteByte(SD_DUMMY_BYTE);
  }
  /*------------Put SD in SPI mode--------------*/
  /*!< SD initialized and set to SPI mode properly */
  return (SD_GoIdleState());
}




uint8_t _checkSDStatus() {
if (SD_Status == SD_RESPONSE_NO_ERROR)
return 0;

do
SD_Status = SD_Init();
while (SD_Status != SD_RESPONSE_NO_ERROR);

return 1;
}

void checkSDStatus() {
while (_checkSDStatus()) { 
//<----><------>writeBufFilled = 0;
//<----><------>SDWriteOffset  = SD_WriteHeaders();
}
}


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


int main(void) {

    status = SD_Init();
    checkSDStatus();
    writeBufFilled = 0;
//    SD_WriteHeaders();
    SDWriteOffset  = SD_BUFSIZE;
    SystemCoreClockUpdate();
    SysTick_Config(SystemCoreClock/10000);
    while (1)
	{
	if (BuffReady != 0){
	check=1;
//	SD_WriteBlock_1(SDWriteOffset);
        SDWriteOffset  = SDWriteOffset + SD_BUFSIZE;



	}

    }
}

void SysTick_Handler(void) {

if (Rstatus == 1 && Wstatus != 1){
ADC1ConvertedValue = 0xB1;
Buffer1[BuffCount] = TMSTP;
BuffCount++;
Buffer1[BuffCount] = ADC1ConvertedValue;
BuffCount++;
TMSTP++;
}

if (Rstatus == 2 && Wstatus != 2){
ADC1ConvertedValue = 0xB2;
Buffer2[BuffCount] = TMSTP;
BuffCount++;
Buffer2[BuffCount] = ADC1ConvertedValue;
BuffCount++;
TMSTP++;
}

if ( BuffCount == 254 && Rstatus == 1 ){
	Rstatus = 2;
	BuffReady = 1;
	BuffCount = 0;
}

if (BuffCount == 254 && Rstatus == 2){
	Rstatus = 1;
	BuffReady = 2;
	BuffCount = 0;
}


}

