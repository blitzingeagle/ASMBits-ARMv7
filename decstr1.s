// A test case to test your function with
.data
Str: .string "1234"
.text
.global _start
_start:
    ldr r0, =Str
    bl decstr
_end:    b _end        // End of testing code

// Parse a decimal string
decstr:
    PUSH {R4}
    MOV R2, #0
    MOV R4, #10
LOOP:
    LDRB R1, [R0], #1
    CMP R1, #0
	BEQ END
    SUB R1, #0x30
    MLA R2, R2, R4, R1
    B LOOP
END:
    MOV R0, R2
    POP {R4}
    BX LR
    
