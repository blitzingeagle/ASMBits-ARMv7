.global _start
_start:
    mov r0, #5
    bl hailstone
    1: b 1b    // Done

.global hailstone
DATA: .word 0, 3, 1
hailstone:
    PUSH {R4}
    LDR R1, =DATA
    LDM R1, {R1, R2, R3}
LOOP:
    CMP R0, #1
    BEQ END
    AND R4, R0, #1
    CMP R4, #1
    MLAEQ R0, R0, R2, R3
    LSRNE R0, #1
    ADD R1, #1
    B LOOP
END:
    MOV R0, R1
    POP {R4}
    BX LR
