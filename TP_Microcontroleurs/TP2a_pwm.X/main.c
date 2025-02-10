#include "configbits.h"
#include <xc.h>

// D�finitions des masques 
#define MASK_LED1 0x01

void main(void) {
    /* Configuration des ports */
    TRISD &= ~(MASK_LED1);
    ANSELBbits.ANSB0 = 0;  // On ne veut pas d'entr�e analogique
            
    /* Configuration mat�rielle PWM via PPS */
    RD0PPS = 0b00001111;  // Car d'apr�s la doc si on a RD0PPS = 01111 alors on se connecte � la sortie PWM4OUT
      
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
