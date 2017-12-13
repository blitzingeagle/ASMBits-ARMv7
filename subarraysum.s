// A test case to test your function with
Array: .word -1, -1, 3, -1, 3, -2

.global _start
_start:
    ldr r0, =Array
    ldr r1, =6
    bl subarraysum
    b _start        // End of testing code

// Sum elements of array
subarraysum:
    PUSH {R4}
    LDR R2, =0x80000000		// curr max
    MOV R3, R2				// tot max
LOOP:
    SUB R1, #1
    LDR R4, [R0, R1, LSL #2]
    CMP R2, #0
    MOVLT R2, #0
    ADD R2, R4
    CMP R2, R3
    MOVGT R3, R2
    CMP R1, #0
    BGT LOOP
    POP {R4}
    MOV R0, R3
    BX LR
	
