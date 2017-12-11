.global _start
_start:
    ldr r0, =0x20000
    mov r1, #3
    mov r2, #4
    mov r3, #5
    bl pack3
    1: b 1b  // done

.global pack3
pack3:
    STM R0, {R1, R2, R3}
    BX LR
