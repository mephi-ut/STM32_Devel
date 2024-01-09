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
#define RCC_APB2Periph_ADC1              ((uint32_t)0x00000200)

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

#define ADC_ExternalTrigConv_None                  ((uint32_t)0x000E0000) /*!< For ADC1, ADC2 and ADC3 */
#define ADC_DataAlign_Right                        ((uint32_t)0x00000000)
#define ADC_Channel_0                               ((uint8_t)0x00)
#define ADC_Mode_Independent                       ((uint32_t)0x00000000)

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
  uint32_t ADC_Mode;                      /*!< Configures the ADC to operate in independent or                               
                                               dual mode.                                                                    
                                               This parameter can be a value of @ref ADC_mode */                             
                                                                                                                             
  FunctionalState ADC_ScanConvMode;       /*!< Specifies whether the conversion is performed in                              
                                               Scan (multichannels) or Single (one channel) mode.                            
                                               This parameter can be set to ENABLE or DISABLE */                             
  FunctionalState ADC_ContinuousConvMode; /*!< Specifies whether the conversion is performed in                              
                                               Continuous or Single mode.                                                    
                                               This parameter can be set to ENABLE or DISABLE. */                            
  uint32_t ADC_ExternalTrigConv;          /*!< Defines the external trigger used to start the analog                         
                                               to digital conversion of regular channels. This parameter                     
                                               can be a value of @ref ADC_external_trigger_sources_for_regular_channels_convers*/
  uint32_t ADC_DataAlign;                 /*!< Specifies whether the ADC data alignment is left or right.                    
                                               This parameter can be a value of @ref ADC_data_align */                       
  uint8_t ADC_NbrOfChannel;               /*!< Specifies the number of ADC channels that will be converted                   
                                               using the sequencer for regular channel group.                                
                                               This parameter must range from 1 to 16. */                                    
}ADC_InitTypeDef;                                                                                                            

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
void ADC_DeInit(ADC_TypeDef* ADCx);
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ResetCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetResetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_StartCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_SoftwareStartConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);





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




int main(void) {
        ADC_InitTypeDef     ADC_InitStructure;
        GPIO_InitTypeDef    GPIO_InitStructure;
        RCC_AHBPeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
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
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1 | RCC_APB2Periph_GPIOA, ENABLE);                                                

    while (1)
	{

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

