#include "configbits.h" // Bits de configuration
#include <xc.h>         // Definition des registres specifiques au uC

// Prototypes des fonctions
void delai_approx(void);

void main(void) {
    // Configuration des ports en sortie
        //TRISD = 0x00; // Port D en sortie led D1 a D4
        //TRISB = 0x00; // Port B en sortie led D5 a D8
    TRISDbits.TRISD0 = 0;
    TRISDbits.TRISD1 = 0;
    TRISDbits.TRISD2 = 0;
    TRISDbits.TRISD3 = 0;
    
    TRISBbits.TRISB0 = 0;
    TRISBbits.TRISB1 = 0;
    TRISBbits.TRISB2 = 0;
    TRISBbits.TRISB3 = 0;

    while (1) {
        // Allumer les LEDs D1-D4
            //LATD = 0x0F; // 00001111 en binaire
            //LATB = 0x00; // 00000000 en binaire
        LATDbits.LATD0 = 1;
        LATDbits.LATD1 = 1;
        LATDbits.LATD2 = 1;
        LATDbits.LATD3 = 1;
        
        LATBbits.LATB0 = 0;
        LATBbits.LATB1 = 0;
        LATBbits.LATB2 = 0;
        LATBbits.LATB3 = 0;
        
        delai_approx(); //attend

        // Allumer les LEDs D5-D8
        
            //LATD = 0x00; // 00000000 en binaire
            //LATB = 0x0F; // 00001111 en binaire
        LATDbits.LATD0 = 0;
        LATDbits.LATD1 = 0;
        LATDbits.LATD2 = 0;
        LATDbits.LATD3 = 0;
        
        LATBbits.LATB0 = 1;
        LATBbits.LATB1 = 1;
        LATBbits.LATB2 = 1;
        LATBbits.LATB3 = 1;
        delai_approx(); //attend
    }
}

void delai_approx(void) {
    // Temporisation approximative d'environ 1 seconde
    for (unsigned long i = 0; i < 90000; i++) 
    {
        //boucle vide pour attendre 1 seconde
    }
}