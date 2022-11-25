org 100h

push word [a]
push word [b]
push word [c]
pop AX
pop BX
add AX, BX
push AX
pop BX
pop AX
mov DX, 00h
div BX

mov [result], AX

mov AX, 4C00h
int 21h

a dw 02h
b dw 04h
c dw 06h
result dw 00h