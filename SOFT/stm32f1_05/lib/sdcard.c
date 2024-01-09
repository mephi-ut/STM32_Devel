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
  SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_2;

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

SD_Error SD_WriteBlock(uint8_t* pBuffer, uint32_t WriteAddr, uint16_t BlockSize)
{
  uint32_t i = 0;
  SD_Error rvalue = SD_RESPONSE_FAILURE;

  /*!< SD chip select low */
  SD_CS_LOW();

  /*!< Send CMD24 (SD_CMD_WRITE_SINGLE_BLOCK) to write multiple block */
  SD_SendCmd(SD_CMD_WRITE_SINGLE_BLOCK, WriteAddr, 0xFF);
  
  /*!< Check if the SD acknowledged the write block command: R1 response (0x00: no errors) */
  if (!SD_GetResponse(SD_RESPONSE_NO_ERROR))
  {
    /*!< Send a dummy byte */
    SD_WriteByte(SD_DUMMY_BYTE);

    /*!< Send the data token to signify the start of the data */
    SD_WriteByte(0xFE);

    /*!< Write the block data to SD : write count data by block */
    for (i = 0; i < BlockSize; i++)
    {
      /*!< Send the pointed byte */
      SD_WriteByte(*pBuffer);
      /*!< Point to the next location where the byte read will be saved */
      pBuffer++;
    }
    /*!< Put CRC bytes (not really needed by us, but required by SD) */
    SD_ReadByte();
    SD_ReadByte();

    /*!< Read data response */
    if (SD_GetDataResponse() == SD_DATA_OK)
    {
      rvalue = SD_RESPONSE_NO_ERROR;
    }
  }
  /*!< SD chip select high */
  SD_CS_HIGH();
  /*!< Send dummy byte: 8 Clock pulses of delay */
  SD_WriteByte(SD_DUMMY_BYTE);

  /*!< Returns the reponse */
  return rvalue;
}