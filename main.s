jsr VINIT
GETCH = $1E5A

input_loop:
jsr GETCH
jsr VOUTCH
jmp input_loop

.include "voutch.s"