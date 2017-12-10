// Insert declarations here
.equ LEDS, 0xFF200000
.global get_led
// A function that returns the value of LEDS
get_led:
    LDR R0, =LEDS
    BX LR
