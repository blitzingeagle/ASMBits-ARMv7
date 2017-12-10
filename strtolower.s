.data
.byte 0    // Strings aren't word-aligned
MyString: .string "Hello World"

.text
.global _start
_start:
    ldr r0, =MyString
    bl strtolower
    1: b 1b

.global strtolower
strtolower:
    MOV R1, #0
LOOP:
    LDRB R2, [R0, R1]
    CMP R2, #0
    BXEQ LR
    CMP R2, #0x41 	// Compare to 'A'
    BLT LTA
    CMP R2, #0x5a	// Compare to 'Z'
    ADDLE R2, #0x20
LTA:
    STRB R2, [R0, R1]
    ADD R1, #1
    B LOOP
