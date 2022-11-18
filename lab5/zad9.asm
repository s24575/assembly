org 100h

add AX, [a]
add AX, [b]
mov BX, [c]
mov DX, 0h
div BX
mov BX, [a]
mul BX
mov word [y], AX

mov AX, 4C00h
int 21h

a dw 0x05
b dw 0x0F
c dw 0x04
y dw 0x0

;a * ((b + a) / c)