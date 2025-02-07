#include "configbits.h"
#include <xc.h>

// Définitions des masques LED
#define MASK_LED1 0x01
#define MASK_LED2 0x02
#define MASK_LED3 0x04
#define MASK_LED4 0x08
#define MASK_LED5 0x01
#define MASK_LED6 0x02
#define MASK_LED7 0x04
#define MASK_LED8 0x08

int led_index = 0;
int timer_count = 0;
void _interrupt();

void main(void) {
    /* Configuration des ports */
    TRISD &= ~(MASK_LED1 | MASK_LED2 | MASK_LED3 | MASK_LED4);
    TRISB &= ~(MASK_LED5 | MASK_LED6 | MASK_LED7 | MASK_LED8);

    // Configuration de INTCON pour l'interruption
    TMR0IF = 0;
    TMR0IE = 0;
    INTF = 0;
    INTE = 0;
    IOCIF = 0;
    IOCIE = 0;
    GIE = 1;
    PEIE = 1;
    PIE1 = 0b00000010;
    
    PR2 = 255;
    T2CON = 0b01111100; // Prescaler 1, Postscaler 1:16, Timer2 activé

}
//interruption TMR2: 00000010