.global _start
_start:
    mov r0, #1
    bl odd
    1: b 1b    // Done

.global odd
odd:
    BIC R0, R0, #0xFFFFFFFE
    BX LR
