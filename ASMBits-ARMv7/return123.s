.global _start
_start:
    bl func
    1: b 1b  // done

.global func
func:
    MOV R0, #123
    BX LR
    
