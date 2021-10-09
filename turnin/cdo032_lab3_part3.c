/*	Author: Cindy Do
 *  Partner(s) Name: 
 *	Lab Section: 23
 *	Assignment: Lab #3  Exercise #3
 *	Exercise Description: In addition to the above, PA4 is 1 if a key is in the ignition, PA5 is one if a driver is seated, and PA6 is 1 if the driver's seatbelt is fastened. PC7 should light a "Fasten seatbelt" icon if a key is in the ignition, the driver is seated, but the belt is not fastened. 

 *
 *	I acknowledge all content contained herein, excluding template or example
 *	code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif

int main(void) {
    /* Insert DDR and PORT initializations */
	DDRA = 0x00; PORTA = 0xFF;
	DDRC = 0XFF; PORTC = 0x00;
    unsigned char fuelLvl = 0x0;
    unsigned char tmpA = 0x0;
    unsigned char tmpC = 0x0;
    unsigned char tmpCC = 0x0;

    /* Insert your solution below */
    while (1) {
        fuelLvl = PINA & 0x0F;
        tmpA = PINA & 0x70;

        if(fuelLvl == 0) {
            tmpC = 0x40;
        }
        if(fuelLvl == 0x1 || fuelLvl == 0x2) {
            tmpC = 0x60;
        }
        if(fuelLvl == 0x3 || fuelLvl == 0x4) {
            tmpC = 0x70;
        }
        if( fuelLvl == 0x5 || fuelLvl == 0x6) {
            tmpC = 0x38;
        }
        if( fuelLvl == 0x7 || fuelLvl == 0x8 || fuelLvl == 0x9) {
            tmpC = 0x3C;
        }
        if( fuelLvl == 0xA || fuelLvl == 0xB || fuelLvl == 0xC) {
            tmpC = 0x3E;
        }
        if( fuelLvl == 0xD || fuelLvl == 0xE || fuelLvl == 0xF) {
            tmpC = 0x3F;
        }

        if(tmpA == 0x30) {
            tmpCC = 0x80;
        }
        else {
            tmpCC = 0x0;
        }

        PORTC = tmpC | tmpCC;

    }
    return 1;
}
