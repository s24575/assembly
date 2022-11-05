org 100h

mov AX, [b]
mov BL, [c]
div BL;
mov AH, 0x00
mov BL, [a]
mul BL
mov word [y], AL

mov AX, 4C00h
int 21h

a dw 0x05
b dw 0x0f
c dw 0x04
y dw 0h