org 100h

mov CX, 00h

loop:
cmp CX, [lenght]
jge end

mov BX, CX
mov AX, 02h
mul BX
mov BX, AX
add BX, a
mov AX, [BX]

cmp AX, '+'
je add
cmp AX, '-'
je sub
cmp AX, '*'
je mul
cmp AX, '/'
je div
push AX
endif:
inc CX
jmp loop

add:
pop BX
pop AX
add AX, BX
push AX
jmp endif

sub:
pop BX
pop AX
sub AX, BX
push AX
jmp endif

mul:
pop BX
pop AX
mul BX
push AX
jmp endif

div:
pop BX
pop AX
mov DX, 00h
div BX
push AX
jmp endif

end:
pop AX
mov [result], AX

mov AX, 4C00h
int 21h

lenght dw 5
a dw 2
b dw 2
c dw '/'
d dw 2
e dw '+'

result dw 00h