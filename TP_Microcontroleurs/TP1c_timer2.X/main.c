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


unsigned char led_index = 0; // Indice de la LED actuelle (de 0 à 7)

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

    PR2 = 255; // Valeur maximale du registre PR2 (8 bits)
    T2CON=0b01111100; // Prescaler 1, Postscaler 1:16, Timer2 activé
        
        
    while(1) {
        if (PIR1bits.TMR2IF) { // Si le Timer2 a débordé
            PIR1bits.TMR2IF = 0;  // Remise à zéro du Timer2
            
            // Eteindre toutes les LEDs de D et B
            LATD = 0x00;  // Eteindre toutes les LEDs de D
            LATB = 0x00;  // Eteindre toutes les LEDs de B

            // Utilisation d'un switch pour allumer la LED correspondant à l'indice actuel
            switch (led_index) {
                case 0: LATD |= MASK_LED1; break;
                case 1: LATD |= MASK_LED2; break;
                case 2: LATD |= MASK_LED3; break;
                case 3: LATD |= MASK_LED4; break;
                case 4: LATB |= MASK_LED5; break;
                case 5: LATB |= MASK_LED6; break;
                case 6: LATB |= MASK_LED7; break;
                case 7: LATB |= MASK_LED8; break;
            }
            
            led_index++;
            if (led_index >= 8) led_index = 0;
        }
    }
}
