org 100h

push word [a]
pop AX
mul AX
push AX
push word [b]
pop AX
mov BX, 02h
mul BX
push AX
pop BX
pop AX
add AX, BX
push AX
push word [c]
pop BX
pop AX
add AX, BX

mov [result], AX

mov AX, 4C00h
int 21h

a dw 02h
b dw 04h
c dw 06h
result dw 00h

; a^2 + 2b + c
; a a * 2 b * + c +