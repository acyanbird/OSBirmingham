mov bx, 0

cmp bx, 4
jle less4 ; jump if less equal 4
cmp bx, 40
jl less40 ; jump if less than 40
jmp nothing ; jump nothing happen

less4:
mov al, 'A'
jmp end
less40:
mov al, 'B'
jmp end
nothing:
mov al, 'C'
; def label

end:

mov ah, 0x0e
int 0x10

jmp $

;padding with magic num
times 510-($-$$) db 0
dw 0xaa55


