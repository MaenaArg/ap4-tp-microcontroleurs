#include "configbits.h" // Bits de configuration
#include <xc.h>         // Definition des registres specifiques au uC


// Configuration des ports pour les LEDs
#define LEDS_D1_D4 LATB
#define LEDS_D5_D8 LATC

// Prototypes des fonctions
void delai_approx(void);

void main(void) {
    // Configuration des ports en sortie
    TRISD = 0x00; // Port B en sortie led D1 a D4
    TRISB = 0x00; // Port D en sortie led D5 a D8

    while (1) {
        // Allumer les LEDs D1-D4
        LATD = 0x0F; // 00001111 en binaire
        LATB = 0x00; // 00000000 en binaire
        delai_approx(); //attend

        // Allumer les LEDs D5-D8
        LATD = 0x00; // 00000000 en binaire
        LATB = 0x0F; // 00001111 en binaire
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
