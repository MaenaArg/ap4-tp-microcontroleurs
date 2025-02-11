#include "configbits.h" // Bits de configuration
#include <xc.h>         // Definition des registres specifiques au uC

void main(void) {
    
    /* Partie 1 : Configuration logicielle */
    
    // 1)  Configuration PPS / Assignation pins
    RC6PPS = 0b00010100;
    RXPPS = 0b00010111;

    // 2) Configuration pins RC6 et RC7
    TRISCbits.TRISC6 = 0;
    ANSELCbits.ANSC6 = 0;
    LATCbits.LATC6 = 0;
    TRISCbits.TRISC7 = 1;
    ANSELCbits.ANSC7 = 0;
    
    // 3) Configuration vitesse de transmission
    
    
    
    while(1){
        /* Code a executer dans une boucle infinie */
    }
}