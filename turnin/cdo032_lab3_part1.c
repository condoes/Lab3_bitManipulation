/*	Author: Cindy Do
 *  Partner(s) Name: 
 *	Lab Section: 23
 *	Assignment: Lab #3  Exercise #1
 *	Exercise Description: Count the number of 1s on ports A and B and output that number on port C. 

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
	DDRB = 0X00; PORTB = 0xFF;
	DDRC = 0xFF; PORTC = 0x00; 
	unsigned char tmpCntA = 0x0;
	unsigned char tmpCntB = 0x0;
	unsigned char tmpA = 0x0;
	unsigned char tmpB = 0x0;

	tmpA = PINA; 
	tmpB = PINB;

    /* Insert your solution below */
    while (tmpA != 0x0 && tmpB != 0x0) {
        
            if((tmpA & 0x01) == 0x1) {
                tmpCntA = tmpCntA + 0x1;
                tmpA = tmpA >> 1;
            }	
 
            if((tmpB & 0x01) == 0x1) {
                tmpCntB = tmpCntB + 0x1;
                tmpB = tmpB >> 1;
            }
 	

    }

	PORTD = tmpCntA + tmpCntB;
    return 1;
}
