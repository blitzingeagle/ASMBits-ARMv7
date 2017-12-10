.data
Pointer: .word 1234
.text
.global _start
_start:
    ldr r0, =Pointer
    bl load
    1: b 1b    // Done

.global load
load:
    LDRB R1, [R0, #3]
    LDRB R2, [R0, #2]
    LSL R1, #8
    ADD R1, R2
    LDRB R2, [R0, #1]
    LSL R1, #8
    ADD R1, R2
    LDRB R2, [R0]
    LSL R1, #8
    ADD R0, R1, R2
    BX LR
