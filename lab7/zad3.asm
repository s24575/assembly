org 100h

push word [a]
push word [b]
pop BX
pop AX
mov DX, 00h
div BX
push AX
push word [c]
pop AX
pop BX
add AX, BX

mov [result], AX

mov AX, 4C00h
int 21h

a dw 02h
b dw 04h
c dw 06h
result dw 00h

; (a / b) + c
; a b / c +