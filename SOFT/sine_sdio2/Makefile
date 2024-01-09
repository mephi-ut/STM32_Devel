BIN=sine_logger.out

TOOLS_PATH=/usr
TOOLS_PREFIX=arm-none-eabi-
TOOLS_VERSION=4.9.2

CFLAGS=-c -mcpu=cortex-m3 -mthumb -Wall -Os -mapcs-frame -D__thumb2__=1 -flto -flto-report -ggdb3
CFLAGS+=-msoft-float -gdwarf-2 -mno-sched-prolog -fno-hosted -mtune=cortex-m3 
CFLAGS+=-march=armv7-m -mfix-cortex-m3-ldrd -ffunction-sections -fdata-sections 
CFLAGS+=-I./lib -I./inc -I./3rd
ASFLAGS=-mcpu=cortex-m3 -I./inc -I./lib -I./3rd -gdwarf-2 -gdwarf-2 
LDFLAGS=-static -mcpu=cortex-m3 -mthumb -mthumb-interwork -Wl,--start-group 
LDFLAGS+=-L$(TOOLS_PATH)/lib/gcc/arm-none-eabi/$(TOOLS_VERSION)/thumb2 
LDFLAGS+=-L$(TOOLS_PATH)/arm-none-eabi/lib/thumb2 -lc -lg -lstdc++ -lsupc++ -lgcc -lm -flto -flto-report -Os -ggdb3
#LDFLAGS+=--section-start=.text=0x8000000
LDFLAGS+=-Wl,--end-group -Xlinker -Map -Xlinker $(BIN).map -Xlinker 
LDFLAGS+=-T ./startup/stm32f100rb_flash.ld -o $(BIN).elf
#LDFLAGS+= -o $(BIN).elf

CC=$(TOOLS_PATH)/bin/$(TOOLS_PREFIX)gcc #-$(TOOLS_VERSION)
AS=$(TOOLS_PATH)/bin/$(TOOLS_PREFIX)as
SIZE=$(TOOLS_PATH)/bin/$(TOOLS_PREFIX)size

CMSISSRC=./lib/core_cm3.c
STM32_LIBSRC=./lib/system_stm32f10x.c
STM32_LIBSRC=./lib/stm32f10x_rcc.c ./lib/stm32f10x_gpio.c
SRC=main.c

OBJ= core_cm3.o system_stm32f10x.o stm32f10x_it.o startup_stm32f10x_md_vl.o main.o
#OBJ+=stm32f10x_rcc.o stm32f10x_gpio.o stm32f10x_usart.o

all: ccmsis cstm32_lib cc ldall
	$(SIZE) -B $(BIN).elf

ccmsis: $(CMSISSRC)
	$(CC) $(CFLAGS) $(CMSISSRC)

cstm32_lib: $(STM32_LIBSRC)
	$(CC) $(CFLAGS) $(STM32_LIBSRC)
	$(AS) $(ASFLAGS) ./startup/startup_stm32f10x_md_vl.S -o startup_stm32f10x_md_vl.o

cc: $(SRC)
	$(CC) $(CFLAGS) $(SRC)

ldall:
	$(CC) $(OBJ) $(LDFLAGS)

#.PHONY: clean load

#clean:
#	rm -f 	$(OBJ) \
#		$(BIN).map \
#		$(BIN).elf
#	make clean -C ./stlink/build/

#load: $(BIN).elf
#	./flashing_stm32vldiscovery.sh $(BIN).elf
