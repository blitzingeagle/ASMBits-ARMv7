.global _start
_start:
	ldr sp, =0x04000000	// Initial sp
	sub sp, sp, #64	// 16 stack parameters
	mov r0, #5
	mov r1, #20
	mov r2, sp
initloop:
	str r0, [r2], #4       // Post-indexed addressing: Add 4 to r2 after
	add r0, r0, #1
	cmp r0, r1
	ble initloop

	mov r0, #1
	mov r1, #2
	mov r2, #3
	mov r3, #4

	bl sum
	add sp, sp, #64	// Clean up stack
	1: b 1b  // done

sum:
    PUSH {R0, R1, R2, R3}
    MOV R0, #0
    MOV R1, #0
LOOP:
    LDR R2, [SP, R1, LSL #2]
    ADD R0, R2
    ADD R1, #1
    CMP R1, #20
    BLT LOOP

   	POP {R1, R2, R3}
    POP {R1}

    BX LR
