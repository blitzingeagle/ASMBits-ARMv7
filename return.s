.global _start
_start:
    // This is for testing your function
    bl  func   // Call your function
               // Your function should return here.
    1: b 1b    // Infinite loop to stop program after testing

.global func
func:
    BX LR
