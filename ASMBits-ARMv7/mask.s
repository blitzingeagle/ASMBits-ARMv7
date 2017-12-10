.global _start
_start:
	ldr r0, =4
	bl mask
1:	b 1b    // Done

mask:
    MOV R1, #1
    LSL R1, R0
    SUB R0, R1, #1
    BX LR
