// A test case to test your function with
Array: .word 1, 2, 3

.global _start
_start:
    ldr r0, =Array
    ldr r1, =3
    bl arraysum
    b _start        // End of testing code

// Sum elements of array
arraysum:
    MOV R2, #0
LOOP:
    SUB R1, #1
    LDR R3, [R0, R1, LSL #2]
    ADD R2, R3
    CMP R1, #0
    BGT LOOP
    MOV R0, R2
    BX LR
	
