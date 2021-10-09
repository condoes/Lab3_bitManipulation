test "PINA: 0x00 => PORTB: 0x00, PORTC: 0x00"
# Set inputs
setPINA 0x00
# Continue for several ticks
continue 2
# Set expect values
expectPORTB 0x00
expectPORTC 0x00
# Check pass/fail
checkResult

test "PINA: 0x42 => PORTB: 0x04, PORTC: 0x20"
# Set inputs
setPINA 0x42
# Continue for several ticks
continue 2
# Set expect values
expectPORTB 0x04
expectPORTC 0x20
# Check pass/fail
checkResult

test "PINA: 0xA5 => PORTB: 0x0A, PORTC: 0x50"
# Set inputs
setPINA 0xA5
# Continue for several ticks
continue 2
# Set expect values
expectPORTB 0xA
expectPORTC 0x50
# Check pass/fail
checkResult

test "PINA: 0xB7 => PORTB: 0x0B, PORTC: 0x70"
# Set inputs
setPINA 0xB7
# Continue for several ticks
continue 2
# Set expect values
expectPORTB 0xB
expectPORTC 0x70
# Check pass/fail
checkResult


