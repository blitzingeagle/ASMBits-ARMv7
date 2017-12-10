.data
.byte 0    // Test with an unaligned word.
Pointer: .word 1234
.text
.global _start
_start:
    ldr r0, =Pointer
    bl inc
    1: b 1b    // Done

.global inc
inc:
    LDRB R1, [R0, #3]
    LDRB R2, [R0, #2]
    LSL R1, #8
    ADD R1, R2
    LDRB R2, [R0, #1]
    LSL R1, #8
    ADD R1, R2
    LDRB R2, [R0]
    LSL R1, #8
    ADD R1, R2
    ADD R1, #1
    STRB R1, [R0]
    LSR R1, #8
    STRB R1, [R0, #1]
    LSR R1, #8
    STRB R1, [R0, #2]
    LSR R1, #8
    STRB R1, [R0, #3]
    BX LR
