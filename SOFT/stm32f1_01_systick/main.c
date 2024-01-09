#include "main.h"


volatile long int aa=0,bb=0;


void SysTick_Handler(void) {
    aa++;

}

int main(void) {
    SystemCoreClockUpdate();
    SysTick_Config(SystemCoreClock/10000);

    while (1) {
    bb=SystemCoreClock;
    }

    return 0;
}