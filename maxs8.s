// A test case to test your function with
.data
Array: .byte 1, 2, 3

.text
.global _start
_start:
    ldr r0, =3
    ldr r1, =Array
    bl max
    b _start        // End of testing code

// Return maximum element of unsigned array
max:
    LDR R3, =0x80000000 // Smallest signed integer
LOOP:
    SUB R0, #1
    LDRB R2, [R1, R0]
    LSL R2, #24
    ASR R2, #24

    CMP R2, R3
    MOVGT R3, R2

    CMP R0, #0
    MOVEQ R0, R3
    BXEQ LR

    B LOOP
