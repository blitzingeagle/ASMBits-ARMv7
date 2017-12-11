.global _start
_start:
	bl call1234
	1: b 1b

//secret:  // For debugging, uncomment this label
             // Don't submit with this label though, or you will get a duplicate label error.
	mov r0, #1
	bx lr

.global call1234
call1234:
    MOV R0, #1
    MOV R1, #2
    MOV R2, #3
    MOV R3, #4
    B secret
    BX LR
	
