.data
Src: .string "hello"
.align 2   // Insert padding so it's easier to read.
Dst: .string "bye"

.text
.global _start
_start:
    ldr r0, =Src
    ldr r1, =1
    ldr r2, =Dst
    ldr r3, =1
    bl chrcpy
    1: b 1b    // Done

// Copy a character from one string to another
chrcpy:
    LDRB R1, [R0, R1]
    STRB R1, [R2, R3]
    BX LR
