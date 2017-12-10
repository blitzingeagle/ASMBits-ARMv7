// A test case to test your function with
.global _start
_start:
    ldr r0, =0x12345    // First parameter is always in r0
    bl saturate
    b _start        // End of testing code

// Convert unsigned 32 bit to 16 bit, with saturation
saturate:
    MOV R1, #1
    LSL R1, #16
    CMP R0, R1
    SUBHS R0, R1, #1	// unsigned >=
    LSLLO R0, #16		// unsigned <
    LSRLO R0, #16
    BX LR
