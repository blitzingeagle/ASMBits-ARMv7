// A test case to test your function with

.global _start
_start:
    ldr r0, =0x40000
    bl shift
    b _start        // End of testing code

// Return 1/4 amplitude for a S32 sample
shift:
    ASR R0, #2	// log2(4) = 2
	BX LR
