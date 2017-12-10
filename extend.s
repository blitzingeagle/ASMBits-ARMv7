// A test case to test your function with
.global _start
_start:
    ldr r0, =2       // 2 = sign extend 8->32
    ldr r1, =0xf0    // The number to extend
    bl extend
    b _start        // End of testing code

// A function to extend. Only this part will be tested.
extend:
    CMP R0, #0
    BICEQ R1, #0xFFFFFF00

    CMP R0, #1
    LSLEQ R1, #16
    LSREQ R1, #16

    CMP R0, #2
    LSLEQ R1, #24
    ASREQ R1, #24

    CMP R0, #3
    LSLEQ R1, #16
    ASREQ R1, #16

    MOV R0, R1
    BX LR
