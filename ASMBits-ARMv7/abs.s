.global _start
_start:
    mov r0, #10
    bl abs
    1: b 1b    // Done

.global abs
abs:
    CMP R0, #0
    NEGLT R0, R0
    BX LR
