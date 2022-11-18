org 100h

add AX, [b]
add BX, [c]
add BX, [c]
mov DX, 0h
div BX

mov BX, [a]
add BX, [a]
mul BX
mov word [y], AX

mov AX, 4C00h
int 21h

a dw 0x05
b dw 0x0F
c dw 0x04
y dw 0x0

;2a * (b / 2c)