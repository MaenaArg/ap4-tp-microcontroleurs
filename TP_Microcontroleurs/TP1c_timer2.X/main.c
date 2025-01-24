#include "configbits.h" // Bits de configuration
#include <xc.h>         // Definition des registres specifiques au uC

void delai_approx(void);

void main(void) {
    /* Code d'initialisation */
    TRISD = 0x00; // Port D en sortie led D1 a D4
    TRISB = 0x00; // Port B en sortie led D5 a D8
    
    while(1){
        /* Code a executer dans une boucle infinie */
        LATB=0x00;//ledD=0
        LATD=0x0F;//LedB=1;
        if(LATD < 0x08)
        {
            LATD = LATD*2;
            delai_approx();
        }
        else
        {
            LATD = 0x00;//ledB = 0
            LATB=0x01;//ledD = 1
            if(LATB<0x08)
            {
                LATB=LATB*2;
                delai_approx();
            }
        }
    }
}

void delai_approx(void) {
    // Temporisation approximative d'environ 1 seconde
    for (unsigned long i = 0; i < 90000; i++) 
    {
        //boucle vide pour attendre 1 seconde
    }
}