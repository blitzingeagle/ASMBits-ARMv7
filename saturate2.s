// A test case to test your function with
.global _start
_start:
    ldr r0, =0x123    // First parameter is always in r0
    bl saturate
    b _start        // End of testing code

// Convert signed 32 bit to 8 bit, with saturation
saturate:
    CMP R0, #0		// Check positive/negative
    BLT NEG
    CMP R0, #0x7F
    MOVGT R0, #0x7F	// Largest number possible
    BX LR
NEG:
    CMP R0, #0xFFFFFF80
    MOVLT R0, #0x80			// Smallest number possible
    BICGE R0, #0xFFFFFF00	// Clear the upper bits
    BX LR
