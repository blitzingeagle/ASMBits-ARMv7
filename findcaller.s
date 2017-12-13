// Some testing code
.global _start
_start:
	bl where
	1: b 1b  // done

// Your function starts here:
where:
    SUB R0, LR, #4
    BX LR
