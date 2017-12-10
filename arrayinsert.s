.data
// Leave some space for the expanded array
Array: .word 1, 2, 3, 4, 0xff, 0xff

.text
.global _start
_start:
    ldr r0, =Array
    ldr r1, =4
    ldr r2, =2
    ldr r3, =123
    bl array_insert
    1: b 1b    // Done

array_insert:
    SUB R1, R2
    LDR R2, [R0, R2, LSL #2]!	// R0 contains address of first element in range
    MOV R2, R0
    LDR R1, [R2, R1, LSL #2]!	// R2 contains address of last element in range
LOOP:
    LDR R1, [R2, #-4]!
    STR R1, [R2, #4]
    CMP R2, R0
    BGT LOOP
    STR R3, [R0]
    BX LR
