CC      = arm-none-eabi-gcc
LD      = arm-none-eabi-gcc -v
CP      = arm-none-eabi-objcopy
OD      = arm-none-eabi-objdump

CFLAGS  =  -I./ -I./lib -I./inc -c -fno-common -O0 -g -mcpu=cortex-m0 -mthumb 
LFLAGS  = -Tstm32f0.ld -nostartfiles
ODFLAGS = -S
AR+= -rcs

all: test

clean: -rm build/main.lst build/startup_stm32f0xx.o build/main.o build/main.elf build/main.lst build/main.bin

test: main.elf 
	@ echo "...copying"
	$(CP) -O binary build/main.elf build/main.bin
	$(CP) -O ihex build/main.elf build/main.hex
	$(OD) $(ODFLAGS) build/main.elf > build/main.lst

main.elf: main.o startup.o stm32f0.ld
	@ echo "..linking"
	$(LD) $(LFLAGS) -o build/main.elf build/main.o build/startup_stm32f0xx.o

main.o: source/main.c
	@ echo ".compiling"
	$(CC) $(CFLAGS) source/main.c -o build/main.o

startup.o: source/startup_stm32f0xx.s
	@ echo ".compiling"
	$(CC) $(CFLAGS) source/startup_stm32f0xx.s -o build/startup_stm32f0xx.o
