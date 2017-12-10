.global _start
_start:
	ldr r0, =4
	bl pow2
1:	b 1b    // Done

pow2:
    SUB R1, R0, #1
    AND R1, R0
    CMP R1, #0
    MOVEQ R0, #1
    MOVNE R0, #0
    BX LR
    
