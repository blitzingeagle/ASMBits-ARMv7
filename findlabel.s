// Some testing code
// Make sure to submit without "Waldo" defined in your code, or you will get a "multiple definition" error.
// Waldo: .string "Where's Waldo??"

.global _start
_start:
	bl where
	1: b 1b  // done

// Your function starts here:
where:
    LDR R0, =Waldo
    BX LR
