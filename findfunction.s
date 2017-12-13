// Some testing code
// Make sure to submit without "MyFunc" defined in your code, or you will get a "multiple definition" error.
// MyFunc: ret

.global _start
_start:
	bl get_opcode
	1: b 1b  // done

// Your function starts here:
get_opcode:
    LDR R0, =MyFunc
    LDR R0, [R0]
    BX LR
	
