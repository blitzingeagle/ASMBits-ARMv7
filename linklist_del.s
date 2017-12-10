.data
A: .word B
D: .word 0
C: .word D
B: .word C
.text
.global _start
_start:
    ldr r0, =A
    bl listdel
    1: b 1b   // done

.global listdel
listdel:
    CMP R0, #0
    BXEQ LR
    LDR R1, [R0]
    CMP R1, #0
    MOVEQ R0, #0
    BXEQ LR
    LDR R2, [R1]
    STR R2, [R0]
    MOV R0, R1
    BX LR
