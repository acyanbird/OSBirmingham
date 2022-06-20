
mov al, 'H' ; store H in al so func can show it
call func ; call 相当于jump，但是把下一行地址压入stack
jmp end
func:
pusha ;把 reg 内容压入 stack
mov ah, 0x0e
int 0x10
popa ; 把它们弄回来
ret ;return pop stack 地址，jump回去
;感觉其实没有那么简单不过先这样好了

end:

times 510-($-$$) db 0
dw 0xaa55
