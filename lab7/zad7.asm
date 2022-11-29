org 100h

push word [a]
pop AX
mov BX, 02h
mul BX
push AX
push word [b]
push word [c]
pop AX
mov BX, 02h
mul BX
push AX
pop BX
pop AX
mov DX, 00h
div BX
push AX
pop BX
pop AX
mul BX

mov [result], AX

mov AX, 4C00h
int 21h

a dw 02h
b dw 04h
c dw 06h
result dw 00h

; 2a * (b / 2c)
; 2 a * b 2 c * / *