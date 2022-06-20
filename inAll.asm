[org 0x7c00] ; start at this point

mov bx, HELLO_MSG ; move hello to b reg
call print_string
mov bx, BYE_MSG
call print_string

jmp $ ;hang the code

%include "print_string.asm" ; simply replaced by the file content

;Data
;10 13 \r\n change line
HELLO_MSG:
db 'Hello, world',10,13, 0
BYE_MSG:
db 'Goodbye',10,13, 0

;padding with 0
times 510-($-$$) db 0 ; $ for current, $$　for starting point
dw 0xaa55

