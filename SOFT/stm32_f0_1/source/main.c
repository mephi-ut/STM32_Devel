//
// Пример проекта для платы STM32F0Discovery
// Моргание светодиодом
// teplofizik
// 

#define assert_param(a)
#include "stm32f0xx_gpio.h"
#include "stm32f0xx.h"
#include "stm32f0xx_usart.h"
#include "stm32f0xx_syscfg.h"
#include "stm32f0xx_exti.h"
#include "stm32f0xx_rcc.h"
#include "stm32f0xx_spi.h"
#include "stm32f0xx_misc.h"
#include "stm320518_eval_spi_sd.c"
#include "stm320518_eval.c"

#include "stm32f0xx_i2c.c"
#include "stm32f0xx_gpio.c"
#include "stm32f0xx_usart.c"
#include "stm32f0xx_syscfg.c"
#include "stm32f0xx_exti.c"
#include "stm32f0xx_rcc.c"
#include "stm32f0xx_spi.c"
#include "stm32f0xx_misc.c"



int main(void)
{
    while(1)
    {
        // Моргание!
        led_On();
        delay(200000UL);
        led_Off();
        delay(200000UL);
    }
}
