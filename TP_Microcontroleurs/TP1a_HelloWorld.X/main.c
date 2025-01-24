#include "configbits.h" // Bits de configuration
#include <xc.h>         // Definition des registres specifiques au uC

// #definitions
#define MASK_LED1 0x01 // Définit un masque permettant d'isoler la LED D1 (bit #0 du port D) -> 0000.0001
#define MASK_LED2 0x02
#define MASK_LED3 0x04
#define MASK_LED4 0x08
#define MASK_LED5 0x01 //// Définit un masque permettant d'isoler la LED D5 (bit #0 du port B)
#define MASK_LED6 0b00000010
#define MASK_LED7 0b00000100
#define MASK_LED8 0b00001000

void main(void) {
    /* Code d'initialisation */

    TRISD &= ~MASK_LED1; // Data direction - Déterminer si c'est une entrée ou une sortie où D nom du port - Sortie 0 
    TRISD &= ~MASK_LED2;
    TRISD &= ~MASK_LED3;
    TRISD &= ~MASK_LED4;
    TRISB &= ~MASK_LED5;
    TRISB &= ~MASK_LED6;
    TRISB &= ~MASK_LED7;
    TRISB &= ~MASK_LED8;
    
   while(1){
        // Code Ã  exÃ©cuter Ã  l'infini
        LATD |= MASK_LED1; // Output latch - Permet de lire, écrire et modifier la valeur du MASC -> allumer la LED1
        __delay_ms(250); // Attend pendant 250 ms
        LATD = 0x00; // Eteindre toutes les LEDs de D
        LATD |= MASK_LED2;
        __delay_ms(250);
        LATD = 0x00; 
        LATD |= MASK_LED3;
        __delay_ms(250);
        LATD = 0x00;
        LATD |= MASK_LED4;
        __delay_ms(250);
        LATB = 0x00; // Eteindre toutes les LEDs de B
        LATD = 0x00; // continuer d'éteidre toutes les LEDs de D car sinon LED4 reste allumée
        LATB |= MASK_LED5;
        __delay_ms(250);
        LATB = 0x00;
        LATD = 0x00;
        LATB |= MASK_LED6;
        __delay_ms(250);
        LATB = 0x00;
        LATD = 0x00;
        LATB |= MASK_LED7;
        __delay_ms(250);
        LATB = 0x00;
        LATD = 0x00;
        LATB |= MASK_LED8;
        __delay_ms(250);
        LATB = 0x00;
        LATD = 0x00;
    }
   
}