// Some testing code
.global _start
_start:
	ldr sp, =0x4000000
	bl where

	1: b 1b  // done

// Your function starts here:
where:
    MOV R0, SP
    BX LR
	
