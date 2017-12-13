// A test case to test your function with
.global _start
_start:
    ldr r0, =10    // First parameter is always in r0
    bl bcd
    b _start        // End of testing code

// Convert a number to BCD representation
bcd:
    CMP R0, #0x9
    ADDGT R0, #6
    BX LR
	
