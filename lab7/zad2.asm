org 100h

push word [a]
push word [b]
pop AX
pop BX
add AX, BX
push AX
push word [c]
pop AX
pop BX
add AX, BX
mov BX, 02h
mul BX

mov [result], AX

mov AX, 4C00h
int 21h

a dw 02h
b dw 04h
c dw 06h
result dw 00h

; 2a + 2b - 2c
; a b + c - 2 *