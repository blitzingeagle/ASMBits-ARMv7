Data: .word 0x123, 0x124, 0x125
.global _start
_start:
    ldr r0, =Data
    ldr r1, =0
    ldr r2, =2
    bl swap
    1: b 1b    // Done

// Swap two array elements
swap:
    PUSH {R4}
    LDR R3, [R0, R1, LSL #2]
    LDR R4, [R0, R2, LSL #2]
    STR R3, [R0, R2, LSL #2]
    STR R4, [R0, R1, LSL #2]
    POP {R4}
    BX LR
