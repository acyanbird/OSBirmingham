; using for loop to print char, until it reach 0
print_string:
pusha 
mov ah, 0x0e ;show mode
mov al, [bx] ; print first char
start:
int 0x10 ; print current char
add bx, 1 ; add one to bx move to next char
mov al, [bx] ;load char
cmp al, 0
je end
jmp start

end:
popa
ret
