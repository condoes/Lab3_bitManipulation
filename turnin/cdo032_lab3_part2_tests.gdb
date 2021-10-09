# Test file for "Lab3_bitManipulation"


# commands.gdb provides the following functions for ease:
#   test "<message>"
#       Where <message> is the message to print. Must call this at the beginning of every test
#       Example: test "PINA: 0x00 => expect PORTC: 0x01"
#   checkResult
#       Verify if the test passed or failed. Prints "passed." or "failed." accordingly, 
#       Must call this at the end of every test.
#   expectPORTx <val>
#       With x as the port (A,B,C,D)
#       The value the port is epected to have. If not it will print the erroneous actual value
#   setPINx <val>
#       With x as the port or pin (A,B,C,D)
#       The value to set the pin to (can be decimal or hexidecimal
#       Example: setPINA 0x01
#   printPORTx f OR printPINx f 
#       With x as the port or pin (A,B,C,D)
#       With f as a format option which can be: [d] decimal, [x] hexadecmial (default), [t] binary 
#       Example: printPORTC d
#   printDDRx
#       With x as the DDR (A,B,C,D)
#       Example: printDDRB

echo ======================================================\n
echo Running all tests..."\n\n


# Add tests below
-------------------
test "PINA: 0x01 => PORTC: 0x60 (1100000)"
# Set inputs
setPINA 0x01
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x60
# Check pass/fail
checkResult

test "PINA: 0x02 => PORTC: 0x70 (1100000)"
# Set inputs
setPINA 0x02
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x60
# Check pass/fail
checkResult

test "PINA: 0x03 => PORTC: 0x60 (1110000)"
# Set inputs
setPINA 0x03
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x70
# Check pass/fail
checkResult

test "PINA: 0x04 => PORTC: 0x60 (1110000)"
# Set inputs
setPINA 0x04
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x70
# Check pass/fail
checkResult

test "PINA: 0x05 => PORTC: 0x38 (0111000)"
# Set inputs
setPINA 0x05
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x38
# Check pass/fail
checkResult

test "PINA: 0x06 => PORTC: 0x38 (0111000)"
# Set inputs
setPINA 0x06
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x38
# Check pass/fail
checkResult

test "PINA: 0x07 => PORTC: 0x3C (0111100)"
# Set inputs
setPINA 0x07
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x3C
# Check pass/fail
checkResult

test "PINA: 0x08 => PORTC: 0x3C (0111100)"
# Set inputs
setPINA 0x08
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x3C
# Check pass/fail
checkResult

test "PINA: 0x09 => PORTC: 0x3C (0111100)"
# Set inputs
setPINA 0x09
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x3C
# Check pass/fail
checkResult

test "PINA: 0xA => PORTC: 0x3E (0111110)"
# Set inputs
setPINA 0xA
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x3E
# Check pass/fail
checkResult

test "PINA: 0xB => PORTC: 0x3E (0111110)"
# Set inputs
setPINA 0xB
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x3E
# Check pass/fail
checkResult

test "PINA: 0xC => PORTC: 0x3E (0111110)"
# Set inputs
setPINA 0xC
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x3E
# Check pass/fail
checkResult

test "PINA: 0xD => PORTC: 0x3F (0111111)"
# Set inputs
setPINA 0xD
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x3F
# Check pass/fail
checkResult

test "PINA: 0xE => PORTC: 0x3F (0111111)"
# Set inputs
setPINA 0xE
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x3F
# Check pass/fail
checkResult

test "PINA: 0xF => PORTC: 0x3F (0111111)"
# Set inputs
setPINA 0xF
# Continue for several ticks
continue 2
# Set expect values
expectPORTC 0x3F
# Check pass/fail
checkResult

# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
