org 100h

add AX, [a]
add AX, [b]
add AX, [c]
mov word [y], AX

mov AX, 4C00h
int 21h

a dw 0x05
b dw 0x0F
c dw 0x04
y dw 0x0

;a + b + c