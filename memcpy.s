.data
.word 0x9999
Dest: .word 0, 0, 0, 0, 0xaaaa
Src: .word 1, 2, 3, 4, 0xbbbb

.text
.global _start
_start:
    ldr r0, =Dest
    ldr r1, =Src
    ldr r2, =16
    bl memcpy
    1: b 1b    // Done

.global memcpy
memcpy:
LOOP:
    CMP R2, #0			// If byte counter is 0, exit
    BXLE LR
    SUB R2, #1
    LDRB R3, [R1, R2]	// Load byte
    STRB R3, [R0, R2]	// Store byte
    B LOOP
