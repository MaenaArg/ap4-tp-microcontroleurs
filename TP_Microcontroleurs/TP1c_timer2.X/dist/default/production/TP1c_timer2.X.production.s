subtitle "Microchip MPLAB XC8 C Compiler v2.46 (Free license) build 20240104201356 Og1 "

pagewidth 120

	opt flic

	processor	16F1719
include "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\16f1719.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
# 54 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
INDF0 equ 00h ;# 
# 74 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
INDF1 equ 01h ;# 
# 94 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PCL equ 02h ;# 
# 114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
STATUS equ 03h ;# 
# 177 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
FSR0L equ 04h ;# 
# 197 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
FSR0H equ 05h ;# 
# 221 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
FSR1L equ 06h ;# 
# 241 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
FSR1H equ 07h ;# 
# 261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
BSR equ 08h ;# 
# 313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
WREG equ 09h ;# 
# 333 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PCLATH equ 0Ah ;# 
# 353 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
INTCON equ 0Bh ;# 
# 431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PORTA equ 0Ch ;# 
# 493 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PORTB equ 0Dh ;# 
# 555 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PORTC equ 0Eh ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PORTD equ 0Fh ;# 
# 679 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PORTE equ 010h ;# 
# 717 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PIR1 equ 011h ;# 
# 779 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PIR2 equ 012h ;# 
# 836 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PIR3 equ 013h ;# 
# 892 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TMR0 equ 015h ;# 
# 912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TMR1 equ 016h ;# 
# 919 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TMR1L equ 016h ;# 
# 939 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TMR1H equ 017h ;# 
# 959 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
T1CON equ 018h ;# 
# 1031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
T1GCON equ 019h ;# 
# 1101 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TMR2 equ 01Ah ;# 
# 1121 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PR2 equ 01Bh ;# 
# 1141 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
T2CON equ 01Ch ;# 
# 1212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TRISA equ 08Ch ;# 
# 1274 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TRISB equ 08Dh ;# 
# 1336 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TRISC equ 08Eh ;# 
# 1398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TRISD equ 08Fh ;# 
# 1460 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TRISE equ 090h ;# 
# 1498 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PIE1 equ 091h ;# 
# 1560 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PIE2 equ 092h ;# 
# 1617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PIE3 equ 093h ;# 
# 1673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
OPTION_REG equ 095h ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PCON equ 096h ;# 
# 1813 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
WDTCON equ 097h ;# 
# 1872 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
OSCTUNE equ 098h ;# 
# 1930 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
OSCCON equ 099h ;# 
# 2002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
OSCSTAT equ 09Ah ;# 
# 2064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ADRES equ 09Bh ;# 
# 2071 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ADRESL equ 09Bh ;# 
# 2091 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ADRESH equ 09Ch ;# 
# 2111 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ADCON0 equ 09Dh ;# 
# 2191 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ADCON1 equ 09Eh ;# 
# 2244 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ADCON2 equ 09Fh ;# 
# 2292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
LATA equ 010Ch ;# 
# 2354 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
LATB equ 010Dh ;# 
# 2416 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
LATC equ 010Eh ;# 
# 2478 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
LATD equ 010Fh ;# 
# 2540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
LATE equ 0110h ;# 
# 2572 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CM1CON0 equ 0111h ;# 
# 2629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CM1CON1 equ 0112h ;# 
# 2705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CM2CON0 equ 0113h ;# 
# 2762 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CM2CON1 equ 0114h ;# 
# 2838 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CMOUT equ 0115h ;# 
# 2864 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
BORCON equ 0116h ;# 
# 2897 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
FVRCON equ 0117h ;# 
# 2973 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
DAC1CON0 equ 0118h ;# 
# 3083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
DAC1CON1 equ 0119h ;# 
# 3203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
DAC2CON0 equ 011Ah ;# 
# 3362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
DAC2REF equ 011Bh ;# 
# 3367 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
DAC2CON1 equ 011Bh ;# 
# 3760 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ZCD1CON equ 011Ch ;# 
# 3806 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ANSELA equ 018Ch ;# 
# 3856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ANSELB equ 018Dh ;# 
# 3906 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ANSELC equ 018Eh ;# 
# 3957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ANSELD equ 018Fh ;# 
# 4019 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ANSELE equ 0190h ;# 
# 4051 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PMADR equ 0191h ;# 
# 4058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PMADRL equ 0191h ;# 
# 4078 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PMADRH equ 0192h ;# 
# 4098 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PMDAT equ 0193h ;# 
# 4105 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PMDATL equ 0193h ;# 
# 4125 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PMDATH equ 0194h ;# 
# 4145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PMCON1 equ 0195h ;# 
# 4201 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PMCON2 equ 0196h ;# 
# 4221 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
VREGCON equ 0197h ;# 
# 4242 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RC1REG equ 0199h ;# 
# 4247 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RCREG equ 0199h ;# 
# 4251 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RCREG1 equ 0199h ;# 
# 4296 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TX1REG equ 019Ah ;# 
# 4301 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TXREG1 equ 019Ah ;# 
# 4305 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TXREG equ 019Ah ;# 
# 4350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SP1BRG equ 019Bh ;# 
# 4355 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SPBRG equ 019Bh ;# 
# 4362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SP1BRGL equ 019Bh ;# 
# 4367 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SPBRG1 equ 019Bh ;# 
# 4371 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SPBRGL equ 019Bh ;# 
# 4416 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SP1BRGH equ 019Ch ;# 
# 4421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SPBRGH equ 019Ch ;# 
# 4425 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SPBRGH1 equ 019Ch ;# 
# 4470 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RC1STA equ 019Dh ;# 
# 4475 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RCSTA1 equ 019Dh ;# 
# 4479 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RCSTA equ 019Dh ;# 
# 4650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TX1STA equ 019Eh ;# 
# 4655 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TXSTA1 equ 019Eh ;# 
# 4659 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TXSTA equ 019Eh ;# 
# 4830 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
BAUD1CON equ 019Fh ;# 
# 4835 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
BAUDCON1 equ 019Fh ;# 
# 4839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
BAUDCTL1 equ 019Fh ;# 
# 4843 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
BAUDCON equ 019Fh ;# 
# 4847 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
BAUDCTL equ 019Fh ;# 
# 5076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
WPUA equ 020Ch ;# 
# 5138 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
WPUB equ 020Dh ;# 
# 5200 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
WPUC equ 020Eh ;# 
# 5262 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
WPUD equ 020Fh ;# 
# 5324 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
WPUE equ 0210h ;# 
# 5362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSP1BUF equ 0211h ;# 
# 5367 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSPBUF equ 0211h ;# 
# 5616 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSP1ADD equ 0212h ;# 
# 5621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSPADD equ 0212h ;# 
# 5870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSP1MSK equ 0213h ;# 
# 5875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSPMSK equ 0213h ;# 
# 6124 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSP1STAT equ 0214h ;# 
# 6129 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSPSTAT equ 0214h ;# 
# 6246 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSP1CON1 equ 0215h ;# 
# 6251 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSPCON equ 0215h ;# 
# 6255 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSPCON1 equ 0215h ;# 
# 6259 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSP1CON equ 0215h ;# 
# 6516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSP1CON2 equ 0216h ;# 
# 6521 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSPCON2 equ 0216h ;# 
# 6638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSP1CON3 equ 0217h ;# 
# 6643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSPCON3 equ 0217h ;# 
# 6760 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ODCONA equ 028Ch ;# 
# 6822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ODCONB equ 028Dh ;# 
# 6884 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ODCONC equ 028Eh ;# 
# 6946 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ODCOND equ 028Fh ;# 
# 7008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ODCONE equ 0290h ;# 
# 7040 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CCPR1 equ 0291h ;# 
# 7047 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CCPR1L equ 0291h ;# 
# 7067 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CCPR1H equ 0292h ;# 
# 7087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CCP1CON equ 0293h ;# 
# 7092 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ECCP1CON equ 0293h ;# 
# 7243 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CCPR2 equ 0298h ;# 
# 7250 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CCPR2L equ 0298h ;# 
# 7270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CCPR2H equ 0299h ;# 
# 7290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CCP2CON equ 029Ah ;# 
# 7295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
ECCP2CON equ 029Ah ;# 
# 7446 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CCPTMRS equ 029Eh ;# 
# 7534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SLRCONA equ 030Ch ;# 
# 7596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SLRCONB equ 030Dh ;# 
# 7658 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SLRCONC equ 030Eh ;# 
# 7720 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SLRCOND equ 030Fh ;# 
# 7782 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SLRCONE equ 0310h ;# 
# 7814 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
INLVLA equ 038Ch ;# 
# 7876 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
INLVLB equ 038Dh ;# 
# 7938 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
INLVLC equ 038Eh ;# 
# 8000 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
INLVLD equ 038Fh ;# 
# 8062 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
INLVLE equ 0390h ;# 
# 8100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
IOCAP equ 0391h ;# 
# 8162 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
IOCAN equ 0392h ;# 
# 8224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
IOCAF equ 0393h ;# 
# 8286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
IOCBP equ 0394h ;# 
# 8348 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
IOCBN equ 0395h ;# 
# 8410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
IOCBF equ 0396h ;# 
# 8472 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
IOCCP equ 0397h ;# 
# 8534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
IOCCN equ 0398h ;# 
# 8596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
IOCCF equ 0399h ;# 
# 8658 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
IOCEP equ 039Dh ;# 
# 8679 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
IOCEN equ 039Eh ;# 
# 8700 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
IOCEF equ 039Fh ;# 
# 8721 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TMR4 equ 0415h ;# 
# 8741 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PR4 equ 0416h ;# 
# 8761 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
T4CON equ 0417h ;# 
# 8832 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TMR6 equ 041Ch ;# 
# 8852 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PR6 equ 041Dh ;# 
# 8872 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
T6CON equ 041Eh ;# 
# 8945 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
NCO1ACC equ 0498h ;# 
# 8952 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
NCO1ACCL equ 0498h ;# 
# 9022 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
NCO1ACCH equ 0499h ;# 
# 9092 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
NCO1ACCU equ 049Ah ;# 
# 9140 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
NCO1INC equ 049Bh ;# 
# 9147 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
NCO1INCL equ 049Bh ;# 
# 9217 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
NCO1INCH equ 049Ch ;# 
# 9287 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
NCO1INCU equ 049Dh ;# 
# 9333 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
NCO1CON equ 049Eh ;# 
# 9373 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
NCO1CLK equ 049Fh ;# 
# 9433 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
OPA1CON equ 0511h ;# 
# 9509 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
OPA2CON equ 0515h ;# 
# 9585 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PWM3DCL equ 0617h ;# 
# 9621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PWM3DCH equ 0618h ;# 
# 9691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PWM3CON equ 0619h ;# 
# 9696 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PWM3CON0 equ 0619h ;# 
# 9757 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PWM4DCL equ 061Ah ;# 
# 9793 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PWM4DCH equ 061Bh ;# 
# 9863 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PWM4CON equ 061Ch ;# 
# 9868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PWM4CON0 equ 061Ch ;# 
# 9929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1PHR equ 0691h ;# 
# 9987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1PHF equ 0692h ;# 
# 10045 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1BLKR equ 0693h ;# 
# 10103 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1BLKF equ 0694h ;# 
# 10161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1DBR equ 0695h ;# 
# 10219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1DBF equ 0696h ;# 
# 10277 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1CON0 equ 0697h ;# 
# 10348 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1CON1 equ 0698h ;# 
# 10399 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1RIS equ 0699h ;# 
# 10461 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1RSIM equ 069Ah ;# 
# 10523 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1FIS equ 069Bh ;# 
# 10585 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1FSIM equ 069Ch ;# 
# 10647 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1ASD0 equ 069Dh ;# 
# 10713 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1ASD1 equ 069Eh ;# 
# 10751 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COG1STR equ 069Fh ;# 
# 10813 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PPSLOCK equ 0E0Fh ;# 
# 10833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
INTPPS equ 0E10h ;# 
# 10853 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
T0CKIPPS equ 0E11h ;# 
# 10873 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
T1CKIPPS equ 0E12h ;# 
# 10893 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
T1GPPS equ 0E13h ;# 
# 10913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CCP1PPS equ 0E14h ;# 
# 10933 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CCP2PPS equ 0E15h ;# 
# 10953 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
COGINPPS equ 0E17h ;# 
# 10973 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSPCLKPPS equ 0E20h ;# 
# 10993 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSPDATPPS equ 0E21h ;# 
# 11013 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
SSPSSPPS equ 0E22h ;# 
# 11033 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RXPPS equ 0E24h ;# 
# 11053 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CKPPS equ 0E25h ;# 
# 11073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLCIN0PPS equ 0E28h ;# 
# 11093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLCIN1PPS equ 0E29h ;# 
# 11113 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLCIN2PPS equ 0E2Ah ;# 
# 11133 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLCIN3PPS equ 0E2Bh ;# 
# 11153 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RA0PPS equ 0E90h ;# 
# 11173 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RA1PPS equ 0E91h ;# 
# 11193 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RA2PPS equ 0E92h ;# 
# 11213 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RA3PPS equ 0E93h ;# 
# 11233 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RA4PPS equ 0E94h ;# 
# 11253 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RA5PPS equ 0E95h ;# 
# 11273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RA6PPS equ 0E96h ;# 
# 11293 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RA7PPS equ 0E97h ;# 
# 11313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RB0PPS equ 0E98h ;# 
# 11333 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RB1PPS equ 0E99h ;# 
# 11353 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RB2PPS equ 0E9Ah ;# 
# 11373 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RB3PPS equ 0E9Bh ;# 
# 11393 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RB4PPS equ 0E9Ch ;# 
# 11413 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RB5PPS equ 0E9Dh ;# 
# 11433 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RB6PPS equ 0E9Eh ;# 
# 11453 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RB7PPS equ 0E9Fh ;# 
# 11473 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RC0PPS equ 0EA0h ;# 
# 11493 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RC1PPS equ 0EA1h ;# 
# 11513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RC2PPS equ 0EA2h ;# 
# 11533 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RC3PPS equ 0EA3h ;# 
# 11553 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RC4PPS equ 0EA4h ;# 
# 11573 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RC5PPS equ 0EA5h ;# 
# 11593 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RC6PPS equ 0EA6h ;# 
# 11613 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RC7PPS equ 0EA7h ;# 
# 11633 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RD0PPS equ 0EA8h ;# 
# 11653 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RD1PPS equ 0EA9h ;# 
# 11673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RD2PPS equ 0EAAh ;# 
# 11693 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RD3PPS equ 0EABh ;# 
# 11713 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RD4PPS equ 0EACh ;# 
# 11733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RD5PPS equ 0EADh ;# 
# 11753 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RD6PPS equ 0EAEh ;# 
# 11773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RD7PPS equ 0EAFh ;# 
# 11793 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RE0PPS equ 0EB0h ;# 
# 11813 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RE1PPS equ 0EB1h ;# 
# 11833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
RE2PPS equ 0EB2h ;# 
# 11853 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLCDATA equ 0F0Fh ;# 
# 11917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC1CON equ 0F10h ;# 
# 12035 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC1POL equ 0F11h ;# 
# 12113 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC1SEL0 equ 0F12h ;# 
# 12205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC1SEL1 equ 0F13h ;# 
# 12297 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC1SEL2 equ 0F14h ;# 
# 12389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC1SEL3 equ 0F15h ;# 
# 12481 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC1GLS0 equ 0F16h ;# 
# 12593 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC1GLS1 equ 0F17h ;# 
# 12705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC1GLS2 equ 0F18h ;# 
# 12817 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC1GLS3 equ 0F19h ;# 
# 12929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC2CON equ 0F1Ah ;# 
# 13047 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC2POL equ 0F1Bh ;# 
# 13125 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC2SEL0 equ 0F1Ch ;# 
# 13217 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC2SEL1 equ 0F1Dh ;# 
# 13309 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC2SEL2 equ 0F1Eh ;# 
# 13401 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC2SEL3 equ 0F1Fh ;# 
# 13493 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC2GLS0 equ 0F20h ;# 
# 13605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC2GLS1 equ 0F21h ;# 
# 13717 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC2GLS2 equ 0F22h ;# 
# 13829 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC2GLS3 equ 0F23h ;# 
# 13941 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC3CON equ 0F24h ;# 
# 14059 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC3POL equ 0F25h ;# 
# 14137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC3SEL0 equ 0F26h ;# 
# 14229 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC3SEL1 equ 0F27h ;# 
# 14321 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC3SEL2 equ 0F28h ;# 
# 14413 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC3SEL3 equ 0F29h ;# 
# 14505 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC3GLS0 equ 0F2Ah ;# 
# 14617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC3GLS1 equ 0F2Bh ;# 
# 14729 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC3GLS2 equ 0F2Ch ;# 
# 14841 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC3GLS3 equ 0F2Dh ;# 
# 14953 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC4CON equ 0F2Eh ;# 
# 15071 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC4POL equ 0F2Fh ;# 
# 15149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC4SEL0 equ 0F30h ;# 
# 15241 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC4SEL1 equ 0F31h ;# 
# 15333 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC4SEL2 equ 0F32h ;# 
# 15425 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC4SEL3 equ 0F33h ;# 
# 15517 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC4GLS0 equ 0F34h ;# 
# 15629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC4GLS1 equ 0F35h ;# 
# 15741 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC4GLS2 equ 0F36h ;# 
# 15853 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
CLC4GLS3 equ 0F37h ;# 
# 15965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
STATUS_SHAD equ 0FE4h ;# 
# 15997 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
WREG_SHAD equ 0FE5h ;# 
# 16017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
BSR_SHAD equ 0FE6h ;# 
# 16037 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
PCLATH_SHAD equ 0FE7h ;# 
# 16057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
FSR0L_SHAD equ 0FE8h ;# 
# 16077 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
FSR0H_SHAD equ 0FE9h ;# 
# 16097 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
FSR1L_SHAD equ 0FEAh ;# 
# 16117 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
FSR1H_SHAD equ 0FEBh ;# 
# 16137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
STKPTR equ 0FEDh ;# 
# 16157 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TOSL equ 0FEEh ;# 
# 16177 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\pic\include\proc\pic16f1719.h"
TOSH equ 0FEFh ;# 
	debug_source C
	FNROOT	_main
	global	_timer_count
	global	_led_index
	global	_PIR1bits
_PIR1bits	set	0x11
	global	_T2CON
_T2CON	set	0x1C
	global	_PR2
_PR2	set	0x1B
	global	_TRISB
_TRISB	set	0x8D
	global	_TRISD
_TRISD	set	0x8F
	global	_LATB
_LATB	set	0x10D
	global	_LATD
_LATD	set	0x10F
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "SWDTEN"
	config PWRTE = "OFF"
	config MCLRE = "ON"
	config CP = "OFF"
	config BOREN = "ON"
	config CLKOUTEN = "OFF"
	config IESO = "ON"
	config FCMEN = "ON"
	config WRT = "OFF"
	config PPS1WAY = "OFF"
	config ZCDDIS = "ON"
	config PLLEN = "OFF"
	config STVREN = "ON"
	config BORV = "LO"
	config LPBOR = "OFF"
	config LVP = "OFF"
	file	"dist/default/production\TP1c_timer2.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_timer_count:
       ds      2

_led_index:
       ds      2

	file	"dist/default/production\TP1c_timer2.X.production.s"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         4
;!    Persistent  32
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      1       5
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK2            80      0       0
;!    BANK3            80      0       0
;!    BANK4            80      0       0
;!    BANK5            80      0       0
;!    BANK6            80      0       0
;!    BANK7            80      0       0
;!    BANK8            80      0       0
;!    BANK9            80      0       0
;!    BANK10           80      0       0
;!    BANK11           80      0       0
;!    BANK12           80      0       0
;!    BANK13           80      0       0
;!    BANK14           80      0       0
;!    BANK15           80      0       0
;!    BANK16           80      0       0
;!    BANK17           80      0       0
;!    BANK18           80      0       0
;!    BANK19           80      0       0
;!    BANK20           80      0       0
;!    BANK21           80      0       0
;!    BANK22           80      0       0
;!    BANK23           80      0       0
;!    BANK24           80      0       0
;!    BANK25           32      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.
;!
;!Critical Paths under _main in BANK16
;!
;!    None.
;!
;!Critical Paths under _main in BANK17
;!
;!    None.
;!
;!Critical Paths under _main in BANK18
;!
;!    None.
;!
;!Critical Paths under _main in BANK19
;!
;!    None.
;!
;!Critical Paths under _main in BANK20
;!
;!    None.
;!
;!Critical Paths under _main in BANK21
;!
;!    None.
;!
;!Critical Paths under _main in BANK22
;!
;!    None.
;!
;!Critical Paths under _main in BANK23
;!
;!    None.
;!
;!Critical Paths under _main in BANK24
;!
;!    None.
;!
;!Critical Paths under _main in BANK25
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             7F0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      1       5       2       35.7%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BANK2               50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BITBANK3            50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BANK3               50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BITBANK4            50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BANK4               50      0       0      13        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!ABS                  0      0       5      14        0.0%
;!BITBANK5            50      0       0      15        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BANK5               50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITBANK6            50      0       0      17        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BANK6               50      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITBANK7            50      0       0      19        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BANK7               50      0       0      20        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITBANK8            50      0       0      21        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BANK8               50      0       0      22        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITBANK9            50      0       0      23        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BANK9               50      0       0      24        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITBANK10           50      0       0      25        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BANK10              50      0       0      26        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITBANK11           50      0       0      27        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!DATA                 0      0       5      28        0.0%
;!BANK11              50      0       0      29        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITBANK12           50      0       0      30        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BANK12              50      0       0      31        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITBANK13           50      0       0      32        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%
;!BANK13              50      0       0      33        0.0%
;!BITBANK14           50      0       0      34        0.0%
;!BANK14              50      0       0      35        0.0%
;!BITBANK15           50      0       0      36        0.0%
;!BANK15              50      0       0      37        0.0%
;!BITBANK16           50      0       0      38        0.0%
;!BANK16              50      0       0      39        0.0%
;!BITBANK17           50      0       0      40        0.0%
;!BANK17              50      0       0      41        0.0%
;!BITBANK18           50      0       0      42        0.0%
;!BANK18              50      0       0      43        0.0%
;!BITBANK19           50      0       0      44        0.0%
;!BANK19              50      0       0      45        0.0%
;!BITBANK20           50      0       0      46        0.0%
;!BANK20              50      0       0      47        0.0%
;!BITBANK21           50      0       0      48        0.0%
;!BANK21              50      0       0      49        0.0%
;!BITBANK22           50      0       0      50        0.0%
;!BANK22              50      0       0      51        0.0%
;!BITBANK23           50      0       0      52        0.0%
;!BANK23              50      0       0      53        0.0%
;!BITBANK24           50      0       0      54        0.0%
;!BANK24              50      0       0      55        0.0%
;!BITBANK25           20      0       0      56        0.0%
;!BANK25              20      0       0      57        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : B1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	"main.c"
	line	17
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	17
	
_main:	
;incstack = 0
	callstack 16
; Regs used in _main: [wreg-fsr0h+status,2+status,0]
	line	19
	
l565:	
;main.c: 19:     TRISD &= ~(0x01 | 0x02 | 0x04 | 0x08);
	movlw	low(0F0h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movlb 1	; select bank1
	andwf	(143)^080h,f	;volatile
	line	20
;main.c: 20:     TRISB &= ~(0x01 | 0x02 | 0x04 | 0x08);
	movlw	low(0F0h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	andwf	(141)^080h,f	;volatile
	line	22
	
l567:	
;main.c: 22:     PR2 = 255;
	movlw	low(0FFh)
	movlb 0	; select bank0
	movwf	(27)	;volatile
	line	23
	
l569:	
;main.c: 23:     T2CON = 0b01111100;
	movlw	low(07Ch)
	movwf	(28)	;volatile
	line	26
	
l571:	
;main.c: 26:         if (PIR1bits.TMR2IF) {
	movlb 0	; select bank0
	btfss	(17),1	;volatile
	goto	u11
	goto	u10
u11:
	goto	l571
u10:
	line	27
	
l573:	
;main.c: 27:             PIR1bits.TMR2IF = 0;
	bcf	(17),1	;volatile
	line	30
	
l575:	
;main.c: 30:             timer_count++;
	movlw	01h
	addwf	(_timer_count),f
	movlw	0
	addwfc	(_timer_count+1),f
	line	33
;main.c: 33:             if (timer_count >= 61) {
	movf	(_timer_count+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movlw	(0)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u25
	movlw	03Dh
	subwf	(_timer_count),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l571
u20:
	line	34
	
l577:	
;main.c: 34:                 timer_count = 0;
	clrf	(_timer_count)
	clrf	(_timer_count+1)
	line	37
;main.c: 37:                 LATD = 0x00;
	movlb 2	; select bank2
	clrf	(271)^0100h	;volatile
	line	38
;main.c: 38:                 LATB = 0x00;
	clrf	(269)^0100h	;volatile
	line	41
;main.c: 41:                 switch (led_index) {
	goto	l581
	line	42
;main.c: 42:                     case 0: LATD |= 0x01; break;
	
l27:	
	bsf	(271)^0100h+(0/8),(0)&7	;volatile
	goto	l583
	line	43
;main.c: 43:                     case 1: LATD |= 0x02; break;
	
l29:	
	bsf	(271)^0100h+(1/8),(1)&7	;volatile
	goto	l583
	line	44
;main.c: 44:                     case 2: LATD |= 0x04; break;
	
l30:	
	bsf	(271)^0100h+(2/8),(2)&7	;volatile
	goto	l583
	line	45
;main.c: 45:                     case 3: LATD |= 0x08; break;
	
l31:	
	bsf	(271)^0100h+(3/8),(3)&7	;volatile
	goto	l583
	line	46
;main.c: 46:                     case 4: LATB |= 0x01; break;
	
l32:	
	bsf	(269)^0100h+(0/8),(0)&7	;volatile
	goto	l583
	line	47
;main.c: 47:                     case 5: LATB |= 0x02; break;
	
l33:	
	bsf	(269)^0100h+(1/8),(1)&7	;volatile
	goto	l583
	line	48
;main.c: 48:                     case 6: LATB |= 0x04; break;
	
l34:	
	bsf	(269)^0100h+(2/8),(2)&7	;volatile
	goto	l583
	line	49
;main.c: 49:                     case 7: LATB |= 0x08; break;
	
l35:	
	bsf	(269)^0100h+(3/8),(3)&7	;volatile
	goto	l583
	line	50
	
l581:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_led_index+1),w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l623
	goto	l583
	asmopt pop
	
l623:	
; Switch size 1, requested type "simple"
; Number of cases is 8, Range of values is 0 to 7
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           22     6 (fixed)
; simple_byte           25    13 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_led_index),w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l27
	xorlw	1^0	; case 1
	skipnz
	goto	l29
	xorlw	2^1	; case 2
	skipnz
	goto	l30
	xorlw	3^2	; case 3
	skipnz
	goto	l31
	xorlw	4^3	; case 4
	skipnz
	goto	l32
	xorlw	5^4	; case 5
	skipnz
	goto	l33
	xorlw	6^5	; case 6
	skipnz
	goto	l34
	xorlw	7^6	; case 7
	skipnz
	goto	l35
	goto	l583
	asmopt pop

	line	52
	
l583:	
;main.c: 52:                 led_index++;
	movlw	01h
	addwf	(_led_index),f
	movlw	0
	addwfc	(_led_index+1),f
	line	53
;main.c: 53:                 if (led_index >= 8) led_index = 0;
	movf	(_led_index+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movlw	(0)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u35
	movlw	08h
	subwf	(_led_index),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l24
u30:
	
l585:	
	clrf	(_led_index)
	clrf	(_led_index+1)
	goto	l571
	line	55
;main.c: 55:         }
	
l24:	
	goto	l571
	global	start
	ljmp	start
	callstack 0
	line	57
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
global	___latbits
___latbits	equ	3
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
