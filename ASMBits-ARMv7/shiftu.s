// A test case to test your function with

.global _start
_start:
    ldr r0, =0x12345678
    bl shift
    b _start        // End of testing code

// Convert one U32 sample to U8 format
shift:
    LSR R0, #24
    BX LR
