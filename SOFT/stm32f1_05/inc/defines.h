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


#define SD_SPI                           SPI2
#define SD_SPI_CLK                       RCC_APB2Periph_SPI2
#define SD_SPI_SCK_PIN                   GPIO_Pin_13                  /* PA.05 */
#define SD_SPI_SCK_GPIO_PORT             GPIOB                       /* GPIOA */
#define SD_SPI_SCK_GPIO_CLK              RCC_APB2Periph_GPIOB
#define SD_SPI_MISO_PIN                  GPIO_Pin_14                  /* PA.06 */
#define SD_SPI_MISO_GPIO_PORT            GPIOB                       /* GPIOA */
#define SD_SPI_MISO_GPIO_CLK             RCC_APB2Periph_GPIOB
#define SD_SPI_MOSI_PIN                  GPIO_Pin_15                  /* PA.07 */
#define SD_SPI_MOSI_GPIO_PORT            GPIOB                       /* GPIOA */
#define SD_SPI_MOSI_GPIO_CLK             RCC_APB2Periph_GPIOB
#define SD_CS_PIN                        GPIO_Pin_12                 /* PC.12 */
#define SD_CS_GPIO_PORT                  GPIOB                       /* GPIOC */
#define SD_CS_GPIO_CLK                   RCC_APB2Periph_GPIOB
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


#define ADC_ExternalTrigConv_None                  ((uint32_t)0x000E0000) /*!< For ADC1, ADC2 and ADC3 */
#define ADC_DataAlign_Right                        ((uint32_t)0x00000000)
#define ADC_Channel_0                               ((uint8_t)0x00)
#define ADC_Mode_Independent                       ((uint32_t)0x00000000)
#define RCC_APB2Periph_ADC1              ((uint32_t)0x00000200)
#define CR2_CLEAR_Mask              ((uint32_t)0xFFF1F7FD)
#define SQR1_CLEAR_Mask             ((uint32_t)0xFF0FFFFF)
#define CR2_ADON_Set                ((uint32_t)0x00000001)
#define CR2_ADON_Reset              ((uint32_t)0xFFFFFFFE)
#define CR2_RSTCAL_Set              ((uint32_t)0x00000008)
#define CR2_EXTTRIG_SWSTART_Set     ((uint32_t)0x00500000)
#define CR2_EXTTRIG_SWSTART_Reset   ((uint32_t)0xFFAFFFFF)
#define CR2_CAL_Set                 ((uint32_t)0x00000004)



#ifdef  USE_FULL_ASSERT
  #define assert_param(expr) ((expr) ? (void)0 : assert_failed((uint8_t *)__FILE__, __LINE__))
  void assert_failed(uint8_t* file, uint32_t line);
#else
  #define assert_param(expr) ((void)0)
#endif /* USE_FULL_ASSERT */

