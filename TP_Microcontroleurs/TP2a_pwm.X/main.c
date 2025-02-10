#include "configbits.h"
#include <xc.h>

// Définitions des masques 
#define MASK_LED1 0x01

void main(void) {
    /* Configuration des ports */
    TRISD &= ~(MASK_LED1);
    ANSELBbits.ANSB0 = 0;  // On ne veut pas d'entrée analogique
            
    /* Configuration matérielle PWM via PPS */
    RD0PPS = 0b00001111;  // Car d'après la doc si on a RD0PPS = 01111 alors on se connecte à la sortie PWM4OUT
      
    PWM4CONbits.PWM4EN = 1;
    PWM4DCH = 0x0C;   // Car 0x0C = 12 => 10% de 124 (PR2)
    PWM4DCL = 0;
       
    /* Configuration Timer2 */
    PR2 = 124;
    T2CONbits.TMR2ON = 1; // the timer is enable
    T2CONbits.T2CKPS = 0b00; // Prescaler ? 1:1
    T2CONbits.T2OUTPS = 0b1111; // Postscaler ? 1:16

    while(1){
        PWM4DCH = 0x0C;   // Car 0x0C = 12 => 10% de 124 (PR2)
        PWM4DCL = 0;
        
        if(PORTBbits.RB0 == 0){
           PWM4DCH = 0x7C; // 100%
           PWM4DCL = 0;
        } 
    }
}
