.data
Array: .word 1, 2, 3, 4

.text
.global _start
_start:
    ldr r0, =Array
    mov r1, #4
    bl array_inc
    1: b 1b    // Done

.global array_inc
array_inc:
    SUB R1, #1
LOOP:
    CMP R1, #0
    BXLT LR
    LDR R2, [R0, R1, LSL #2]
    ADD R2, #1
    STR R2, [R0, R1, LSL #2]
    SUB R1, #1
    B LOOP
	
