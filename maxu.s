// A test case to test your function with
Array: .word 1, 2, 3

.global _start
_start:
    ldr r0, =3
    ldr r1, =Array
    bl max
    b _start        // End of testing code

// Return maximum element of unsigned array
max:
	LDR R3, =0x00000000 // Smallest unsigned integer
LOOP:
    SUB R0, #1
    LDR R2, [R1, R0, LSL #2]
    CMP R2, R3
    MOVHI R3, R2
    CMP R0, #0
    BNE LOOP
    MOV R0, R3
    BX LR
	
