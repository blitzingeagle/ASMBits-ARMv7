.global _start
_start:
    mov r0, #5
    bl popcount
    1: b 1b    // Done

.global popcount
popcount:
    MOV R1, #0
LOOP:
    CMP R0, #0
    MOVEQ R0, R1
    BXEQ LR
    SUB R2, R0, #1 // x &= (x-1); Exploits bit pattern of 2's powers (more runtime efficient than using and for each bit)
    AND R0, R2
    ADD R1, #1
    B LOOP		// "Expected solution length: Around 15 lines." ???
    
