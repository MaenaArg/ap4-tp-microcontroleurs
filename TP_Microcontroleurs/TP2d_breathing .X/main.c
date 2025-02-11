// TP breathing
#include "configbits.h"
#include <xc.h>

int value = 0;
int cpt = 0;
int direction = 1;  // 1 pour monter, -1 pour descendre

void main(void) {
    // Configuration des ports D1
    TRISDbits.TRISD0 = 0;

    // Configuration de INTCON pour l'interruption
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    PIE1bits.TMR2IE=1;
    
    // Configuration matérielle PWM via PPS
    RD0PPS = 0b00001111;  // Car d'après la doc si on a RD0PPS = 01111 alors on se connecte à la sortie PWM4OUT
    PWM4CONbits.PWM4EN = 1;
    
    // Configuration du Timer2
    PR2 = 124;
    T2CONbits.TMR2ON=1; // the timer is enable
    T2CONbits.T2CKPS=0b00; // Prescaler ? 1:1
    T2CONbits.T2OUTPS=0b1111; // Postscaler ? 1:16
    
    while(1){ }
}

void __interrupt() isr (void) {
    // Interruption toutes les 125ml secondes          
    PIR1bits.TMR2IF = 0;  // Effacez le drapeau d'interruption
    if(cpt==125){    
        PWM4DCH = 0x00;   
        PWM4DCL = 0;
        
        // Gérer l'intensité de la LED D1
        switch(value) {
            case 0:  // 62 = 0x3E = 0b0011.1110
                PWM4DCH = 0xF;   
                PWM4DCL = 0x80; break;
            case 1:  // 124 = 7C = 0b0111.1100
                PWM4DCH = 0x1F;   
                PWM4DCL = 0; break;
            case 2:  // 186 = BA = 0b1011.1010
                PWM4DCH = 0x2E;   
                PWM4DCL = 0x80; break;
            case 3:  // 248 = F8 = 0b1111.1000
                PWM4DCH = 0x3E;   
                PWM4DCL = 0; break;
            case 4:  // 310 = 136 = 0b1.0011.0110
                PWM4DCH = 0x4D;   
                PWM4DCL = 0x80; break;
            case 5:  // 372 = 174 = 0b1.0111.0100
                PWM4DCH = 0x5D;   
                PWM4DCL = 0; break;
            case 6: // 434 = 1B2 = 0b1.1011.0010
                PWM4DCH = 0x6C;   
                PWM4DCL = 0x80; break;
            case 7: // 500 = 0x1F4 = 0b1.1111.0100
                PWM4DCH = 0x1F4;   
                PWM4DCL = 0; break;       
        }
        
        // Mise à jour de la valeur et du sens de variation
        value += direction;
        
        // Inversion du sens lorsqu'on atteint les extrêmes
        if (value >= 7){
            direction = -1;  // On commence à descendre
        } 
        if (value < 0){
            direction = 1;   // On recommence à monter
        } 
        cpt = 0;
    } else {
        cpt++;
    }              
}
