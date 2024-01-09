void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
  /* Check the parameters */
  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));
  if (NewState != DISABLE)
  {
    /* Set the ADON bit to wake up the ADC from power down mode */
    ADCx->CR2 |= CR2_ADON_Set;
  }
  else
  {
    /* Disable the selected ADC peripheral */
    ADCx->CR2 &= CR2_ADON_Reset;
  }
}


void ADC_ResetCalibration(ADC_TypeDef* ADCx)
{ 
  /* Check the parameters */
  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  /* Resets the selected ADC calibration registers */
  ADCx->CR2 |= CR2_RSTCAL_Set;
}


FlagStatus ADC_GetResetCalibrationStatus(ADC_TypeDef* ADCx)
{
  FlagStatus bitstatus = RESET;
  /* Check the parameters */
  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  /* Check the status of RSTCAL bit */
  if ((ADCx->CR2 & CR2_RSTCAL_Set) != (uint32_t)RESET)
  {
    /* RSTCAL bit is set */
    bitstatus = SET;
  }
  else
  {
    /* RSTCAL bit is reset */
    bitstatus = RESET;
  }
  /* Return the RSTCAL bit status */
  return  bitstatus;
}

void ADC_StartCalibration(ADC_TypeDef* ADCx)
{
  /* Check the parameters */
  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  /* Enable the selected ADC calibration process */
  ADCx->CR2 |= CR2_CAL_Set;
}

FlagStatus ADC_GetCalibrationStatus(ADC_TypeDef* ADCx)
{
  FlagStatus bitstatus = RESET;
  /* Check the parameters */
  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  /* Check the status of CAL bit */
  if ((ADCx->CR2 & CR2_CAL_Set) != (uint32_t)RESET)
  {
    /* CAL bit is set: calibration on going */
    bitstatus = SET;
  }
  else
  {
    /* CAL bit is reset: end of calibration */
    bitstatus = RESET;
  }
  /* Return the CAL bit status */
  return  bitstatus;
}

void ADC_SoftwareStartConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
  /* Check the parameters */
  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));
  if (NewState != DISABLE)
  {
    /* Enable the selected ADC conversion on external event and start the selected
       ADC conversion */
    ADCx->CR2 |= CR2_EXTTRIG_SWSTART_Set;
  }
  else
  {
    /* Disable the selected ADC conversion on external event and stop the selected
       ADC conversion */
    ADCx->CR2 &= CR2_EXTTRIG_SWSTART_Reset;
  }
}

void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct)
{ 
  uint32_t tmpreg1 = 0;
  uint8_t tmpreg2 = 0;
  /* Check the parameters */
  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_MODE(ADC_InitStruct->ADC_Mode));
  assert_param(IS_FUNCTIONAL_STATE(ADC_InitStruct->ADC_ScanConvMode));
  assert_param(IS_FUNCTIONAL_STATE(ADC_InitStruct->ADC_ContinuousConvMode));
  assert_param(IS_ADC_EXT_TRIG(ADC_InitStruct->ADC_ExternalTrigConv));
  assert_param(IS_ADC_DATA_ALIGN(ADC_InitStruct->ADC_DataAlign));
  assert_param(IS_ADC_REGULAR_LENGTH(ADC_InitStruct->ADC_NbrOfChannel));

  /*---------------------------- ADCx CR1 Configuration -----------------*/
  /* Get the ADCx CR1 value */
  tmpreg1 = ADCx->CR1;
  /* Clear DUALMOD and SCAN bits */
  tmpreg1 &= CR1_CLEAR_Mask;
  /* Configure ADCx: Dual mode and scan conversion mode */
  /* Set DUALMOD bits according to ADC_Mode value */
  /* Set SCAN bit according to ADC_ScanConvMode value */
  tmpreg1 |= (uint32_t)(ADC_InitStruct->ADC_Mode | ((uint32_t)ADC_InitStruct->ADC_ScanConvMode << 8));
  /* Write to ADCx CR1 */
  ADCx->CR1 = tmpreg1;

  /*---------------------------- ADCx CR2 Configuration -----------------*/
  /* Get the ADCx CR2 value */
  tmpreg1 = ADCx->CR2;
  /* Clear CONT, ALIGN and EXTSEL bits */
  tmpreg1 &= CR2_CLEAR_Mask;
  /* Configure ADCx: external trigger event and continuous conversion mode */
  /* Set ALIGN bit according to ADC_DataAlign value */
  /* Set EXTSEL bits according to ADC_ExternalTrigConv value */
  /* Set CONT bit according to ADC_ContinuousConvMode value */
  tmpreg1 |= (uint32_t)(ADC_InitStruct->ADC_DataAlign | ADC_InitStruct->ADC_ExternalTrigConv |
            ((uint32_t)ADC_InitStruct->ADC_ContinuousConvMode << 1));
  /* Write to ADCx CR2 */
  ADCx->CR2 = tmpreg1;

  /*---------------------------- ADCx SQR1 Configuration -----------------*/
  /* Get the ADCx SQR1 value */
  tmpreg1 = ADCx->SQR1;
  /* Clear L bits */
  tmpreg1 &= SQR1_CLEAR_Mask;
  /* Configure ADCx: regular channel sequence length */
  /* Set L bits according to ADC_NbrOfChannel value */
  tmpreg2 |= (uint8_t) (ADC_InitStruct->ADC_NbrOfChannel - (uint8_t)1);
  tmpreg1 |= (uint32_t)tmpreg2 << 20;
  /* Write to ADCx SQR1 */
  ADCx->SQR1 = tmpreg1;
}

uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx)
{
  /* Check the parameters */
  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  /* Return the selected ADC conversion value */
  return (uint16_t) ADCx->DR;
}




