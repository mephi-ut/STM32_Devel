#ifndef __SDIOLIB_H
#define __SDIOLIB_H

#include "stdint.h"
#include <stdio.h>
#include "usart.h"

#ifdef __cplusplus
 extern "C" {
#endif

/*
   PC8  - SDIO_D0
   PC9  - SDIO_D1
   PC10 - SDIO_D2
   PC11 - SDIO_D3
   
   PC12 - SDIO_CK
   
   PD2 - SDIO_CMD
*/

void SD_LowLevel_Init(void);
void SD_Init(void);
void SD_WriteSingleBlock(uint8_t *buf, uint32_t blk);
void SD_ReadSingleBlock(uint8_t *buf, uint32_t blk);
//void SD_WaitReadWriteEnd(void);
void SD_WaitTransmissionEnd(void);
void SD_StartMultipleBlockWrite(uint32_t blk);
void SD_WriteData(uint8_t *buf, uint32_t cnt);
void SD_StopMultipleBlockWrite(void);


#ifdef __cplusplus
}
#endif
#endif //__SDIOLIB_H