.global _start
_start:
    ldr r0, =2    // First function parameter is always passed through r0.
    bl random
    1: b 1b    // Done

DATA: .word 1, 1, 134775813, 1
random:
    CMP R0, #1
    BXLS LR
    PUSH {R4}
    LDR R3, =DATA
    LDM R3, {R1, R2, R3, R4}
LOOP:
    MLA R2, R2, R3, R4
    ADD R1, #1
    CMP R1, R0
    BLO LOOP
    MOV R0, R2
    POP {R4}
    BX LR
