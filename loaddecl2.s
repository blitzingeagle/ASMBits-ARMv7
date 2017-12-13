// Declare something
.data
Data: .word 4, 4, 0x1234

.text
.global _start
_start:
	ldr r0, =Data
	ldr r1, [r0]
	add r0, r0, r1
	ldr r1, [r0]
	add r0, r0, r1
	ldr r2, [r0]
    1: b 1b    // Done

	
