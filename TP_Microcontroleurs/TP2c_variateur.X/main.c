#include "configbits.h" // Bits de configuration
#include <xc.h>         // Definition des registres specifiques au uC

unsigned int ad_read() {
    ADCON0bits.GO = 1; // Démarrer la conversion ADC
    while (ADCON0bits.GO); // Attendre la fin de la conversion
    return ((ADRESH << 8) + ADRESL); // Retourner la valeur 10 bits complète
}

void main(void) {
    // Configuration des ports
    TRISDbits.TRISD0 = 0;
    
    // Configuration de RA0 (AN0) en entrée analogique
    TRISAbits.TRISA0 = 1;
    ANSELAbits.ANSA0 = 1;
    
    //Configuration ADC
    ADCON0bits.CHS = 0;
    ADCON0bits.ADON = 1;
    
    ADCON1bits.ADFM = 1; // Justification à droite
    ADCON1bits.ADCS = 0b100; // Fosc/4
    ADCON1bits.ADPREF = 0; // Référence de tension Vref+ = Vdd (5V)
    
    /* Configuration matérielle PWM via PPS */
    RD0PPS = 0b00001111;  // Car d'après la doc si on a RD0PPS = 01111 alors on se connecte à la sortie PWM4OUT
      
    PWM4CONbits.PWM4EN = 1;
    
    // Configuration Timer2
    PR2 = 124;
    T2CONbits.TMR2ON = 1; // the timer is enable
    T2CONbits.T2CKPS = 0b00; // Prescaler ? 1:1
    T2CONbits.T2OUTPS = 0b1111; // Postscaler ? 1:16
    
    // Eteindre toutes les LEDs
    LATD = 0x00;
    LATB = 0x00;

    while(1){
        // Eteindre toutes les LEDs
        LATD = 0x00;
        LATB = 0x00;
        
        // Lire la valeur de l'ADC
        unsigned int adc_value = ad_read();

        // 1024 / 128
        unsigned char value = adc_value / 128;
        
        // Gérer l'intensité de la LED D1
        switch(value) {
            // 4*(PR2 + 1) = 500 => 100%
            case 0:  // 0 = 0x0 = 0b0
                PWM4DCH = 0x00;   
                PWM4DCL = 0; break;
            case 1:  // 62 = 0x3E = 0b0011.1110
                PWM4DCH = 0xF;   
                PWM4DCL = 0x80; break;
            case 2:  // 124 = 7C = 0b0111.1100
                PWM4DCH = 0x1F;   
                PWM4DCL = 0; break;
            case 3:  // 186 = BA = 0b1011.1010
                PWM4DCH = 0x2E;   
                PWM4DCL = 0x80; break;
            case 4:  // 248 = F8 = 0b1111.1000
                PWM4DCH = 0x3E;   
                PWM4DCL = 0; break;
            case 5:  // 310 = 136 = 0b1.0011.0110
                PWM4DCH = 0x4D;   
                PWM4DCL = 0x80; break;
            case 6:  // 372 = 174 = 0b1.0111.0100
                PWM4DCH = 0x5D;   
                PWM4DCL = 0; break;
            case 7: // 434 = 1B2 = 0b1.1011.0010
                PWM4DCH = 0x6C;   
                PWM4DCL = 0x80; break;
            case 8: // 500 = 0x1F4 = 0b1.1111.0100
                PWM4DCH = 0x1F4;   
                PWM4DCL = 0; break;       
        }
    }
}

