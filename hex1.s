// A test case to test your function with
.global _start
_start:
    ldr r0, =0xa    // First parameter is always in r0
    bl hex1
    b _start        // End of testing code

// Print one hex digit
hex1:
    CMP R0, #0xa
    ADDLT R0, #0x30
    ADDGE R0, #0x57
    BX LR
	
