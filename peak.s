// A test case to test your function with
Array: .word 1, 2, 3

.global _start
_start:
    ldr r0, =3
    ldr r1, =Array
    bl peak
    b _start        // End of testing code

// Return the difference between max and min array elements
peak:
    PUSH {R4}
    LDR R2, =0x7FFFFFFF
    LDR R3, =0x80000000
LOOP:
    SUB R0, #1
    LDR R4, [R1, R0, LSL #2]
    CMP R4, R2
    MOVLT R2, R4
    CMP R4, R3
    MOVGT R3, R4
    CMP R0, #0
    BGT LOOP
    SUB R0, R3, R2
    POP {R4}
    BX LR
    
