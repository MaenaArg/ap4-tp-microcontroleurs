#include "configbits.h" // Bits de configuration
#include <xc.h>         // Definition des registres specifiques au uC


unsigned int ad_read() {
    ADCON0bits.GO = 1; // Démarrer la conversion ADC
    while (ADCON0bits.GO); // Attendre la fin de la conversion
    return ((ADRESH << 8) + ADRESL); // Retourner la valeur 10 bits complète
}


void main(void) {
    /* Configuration des ports */
    TRISDbits.TRISD0 = 0;
    TRISDbits.TRISD1 = 0;
    TRISDbits.TRISD2 = 0;
    TRISDbits.TRISD3 = 0;
    TRISBbits.TRISB0 = 0;
    TRISBbits.TRISB1 = 0;
    TRISBbits.TRISB2 = 0;
    TRISBbits.TRISB3 = 0;
    
    // Configuration de RA0 (AN0) en entrée analogique
    TRISAbits.TRISA0 = 1;
    ANSELAbits.ANSA0 = 1;
    
    
    //Configuration ADC
    ADCON0bits.CHS = 0;
    ADCON0bits.ADON = 1;
    
    ADCON1bits.ADFM = 1; // Justification à droite
    ADCON1bits.ADCS = 0b100; // Fosc/4
    ADCON1bits.ADPREF = 0; // Référence de tension Vref+ = Vdd (5V)
    
    // Eteindre toutes les LEDs
    LATD = 0x00;
    LATB = 0x00;

    while(1){
        // Lire la valeur de l'ADC
        unsigned int adc_value = ad_read();
        
        // Calculer la LED à allumer (0 à 7)
        unsigned char led_index = adc_value / 128; // 1024/8 = 128
        
        // Eteindre toutes les LEDs
        LATD = 0x00;
        LATB = 0x00;
        
        // Allumer la LED correspondante
        switch(led_index) {
            case 0: LATDbits.LATD0 = 1; break;
            case 1: LATDbits.LATD1 = 1; break;
            case 2: LATDbits.LATD2 = 1; break;
            case 3: LATDbits.LATD3 = 1; break;
            case 4: LATBbits.LATB0 = 1; break;
            case 5: LATBbits.LATB1 = 1; break;
            case 6: LATBbits.LATB2 = 1; break;
            case 7: LATBbits.LATB3 = 1; break;
        }
    }
}

