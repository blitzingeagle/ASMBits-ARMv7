//Data: .word 0x123        // Uncomment for debugging
.global _start
_start:
    bl load
    1: b 1b    // Done
load:
    LDR R1, =Data
    LDR R0, [R1]
    BX LR
