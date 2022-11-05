org 100h

mov AX, [a]
mov BL, [b]
add BL, [c]
div BL;
mov byte [y], AL

mov AX, 4C00h
int 21h

a dw 0x05
b dw 0x0f
c dw 0x04
y dw 0h