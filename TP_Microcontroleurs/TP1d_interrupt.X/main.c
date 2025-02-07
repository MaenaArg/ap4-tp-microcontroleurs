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
int cpt = 0;

void main(void) {
    /* Configuration des ports */
    TRISD &= ~(MASK_LED1 | MASK_LED2 | MASK_LED3 | MASK_LED4);
    TRISB &= ~(MASK_LED5 | MASK_LED6 | MASK_LED7 | MASK_LED8);
    
    // Eteindre toutes les LEDs
    LATD = 0x00;
    LATB = 0x00;

    // Configuration de INTCON pour l'interruption
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    //PIE1 = 0b00000010;
    PIE1bits.TMR2IE=1;
    
    PR2 = 124;
    //T2CON = 0b01111100; // Prescaler 1, Postscaler 1:16, Timer2 activé
    T2CONbits.TMR2ON=1; // the timer is enable
    T2CONbits.T2CKPS=0b00; // Prescaler ? 1:1
    T2CONbits.T2OUTPS=0b1111; // Postscaler ? 1:16
    
    while(1){ }
}

void __interrupt() isr (void) {
    //interruption toutes les 125ml secondes          
    PIR1bits.TMR2IF = 0;  // Effacez le drapeau d'interruption
    if(cpt==125){
        // Eteindre toutes les LEDs
        LATD = 0x00;
        LATB = 0x00;
        // Allume LED une après l'autre
        switch (led_index) {
            //fait un OU entre valeur de la sortie (LATD) et le masque de la LED
            case 0: LATD |= MASK_LED1; break;
            case 1: LATD |= MASK_LED2; break;
            case 2: LATD |= MASK_LED3; break;
            case 3: LATD |= MASK_LED4; break;
            case 4: LATB |= MASK_LED5; break;
            case 5: LATB |= MASK_LED6; break;
            case 6: LATB |= MASK_LED7; break;
            case 7: LATB |= MASK_LED8; break;
        }
        cpt = 0;
        led_index++;
        if (led_index >= 8) led_index = 0;
    } else {
        cpt++;
    }              
}
