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
                                               can be a value of @ref ADC_external_trigger_sources_for_regular_channels_convers
*/
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
  SD_RESPONSE_NO_ERROR      = (0x00),
  SD_IN_IDLE_STATE          = (0x01),
  SD_ERASE_RESET            = (0x02),
  SD_ILLEGAL_COMMAND        = (0x04),
  SD_COM_CRC_ERROR          = (0x08),
  SD_ERASE_SEQUENCE_ERROR   = (0x10),
  SD_ADDRESS_ERROR          = (0x20),
  SD_PARAMETER_ERROR        = (0x40),
  SD_RESPONSE_FAILURE       = (0xFF),
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
