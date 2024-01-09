CC      = arm-none-eabi-gcc
LD      = arm-none-eabi-gcc -v
CP      = arm-none-eabi-objcopy
OD      = arm-none-eabi-objdump

CFLAGS  =  -I./ -I./lib -I./inc -c -fno-common -O0 -g -mcpu=cortex-m3 -mthumb 
LFLAGS  = -Tstm32_flash.ld -nostartfiles
ODFLAGS = -S
AR+= -rcs

all: test

clean: -rm build/main.lst build/startup_stm32f10x_ld.o build/main.o build/main.elf build/main.lst build/main.bin

test: main.elf 
	@ echo "...copying"
	$(CP) -O binary build/main.elf build/main.bin
	$(CP) -O ihex build/main.elf build/main.hex
	$(OD) $(ODFLAGS) build/main.elf > build/main.lst

main.elf: main.o startup.o stm32_flash.ld
	@ echo "..linking"
	$(LD) $(LFLAGS) -o build/main.elf build/main.o build/startup_stm32f10x_ld.o

main.o: main.c
	@ echo ".compiling"
	$(CC) $(CFLAGS) main.c -o build/main.o

startup.o: source/startup_stm32f10x_ld.s
	@ echo ".compiling"
	$(CC) $(CFLAGS) source/startup_stm32f10x_ld.s -o build/startup_stm32f10x_ld.o
