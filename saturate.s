// A test case to test your function with
.global _start
_start:
    ldr r0, =0x12345    // First parameter is always in r0
    bl saturate
    b _start        // End of testing code

// Convert unsigned 32 bit to 16 bit, with saturation
saturate:
    LDR R1, =0x0000FFFF
    CMP R0, R1
    MOVHS R0, R1
    BX LR
