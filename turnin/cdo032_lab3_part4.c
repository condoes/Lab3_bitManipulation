/*	Author: Cindy Do
 *  Partner(s) Name: 
 *	Lab Section: 23
 *	Assignment: Lab #3  Exercise #4
 *	Exercise Description: Read an 8-bit value on PA7..PA0 and write that value on PB3..PB0PC7..PC4. That is to say,  take the upper nibble of PINA and map it to the lower nibble of PORTB, likewise take the lower nibble of PINA and map it to the upper nibble of PORTC (PA7 -> PB3, PA6 -> PB2, … PA1 -> PC5, PA0 -> PC4).


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
	DDRB = 0XFF; PORTB = 0x00;
	DDRC = 0xFF; PORTC = 0x00;
    unsigned char tmpA_up = 0x0; 
    unsigned char tmpA_low = 0x0;
	

    /* Insert your solution below */
    while (1) {
        tmpA_up = PINA; tmpA_low = PINA;

        tmpA_up = (tmpA_up >> 4) & 0x0F;
        tmpA_low = (tmpA_low << 4) & 0xF0;

        PORTB = tmpA_up;
        PORTC = tmpA_low;
    }
    return 1;
}
