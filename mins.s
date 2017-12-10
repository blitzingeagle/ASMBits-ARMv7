// A test case to test your function with
Array: .word 1, 2, 3

.global _start
_start:
    ldr r0, =3
    ldr r1, =Array
    bl min
    b _start        // End of testing code

// Return minimum element of signed array
min:
    LDR R3, =0x7FFFFFFF // Largest signed integer
LOOP:
    SUB R0, #1
    LDR R2, [R1, R0, LSL #2]	// Read word at index R0

    CMP R2, R3			// Assign R3 the minimum
    MOVLT R3, R2

    CMP R0, #0
    MOVEQ R0, R3
    BXEQ LR

    B LOOP
