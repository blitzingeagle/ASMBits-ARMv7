// A test case to test your function with
.global _start
_start:
    ldr r0, =0x1000
    bl bits
    b _start        // End of testing code

// Return minimum number of bits to represent first parameter
bits:
    CLZ R0, R0
    RSB R0, R0, #32 // 32-(leading zeros)
    BX LR
	
