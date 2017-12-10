.global _start
_start:
	ldr r0, =4
	ldr r1, =2
	bl mask
1:	b 1b    // Done

mask:
    SUB R0, R1
    MOV R2, #1
    LSL R2, R0
    SUB R0, R2, #1
    LSL R0, R1
    BX LR
