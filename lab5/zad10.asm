org 100h

mov AX, [a]
mov BL, 0x2
div BL
mov CL, AL

mov AX, [b]
mov BL, 0x3
div BL
add CL, AL

mov AX, [c]
mov BL, 0x4
div BL
add CL, AL

mov byte [y], CL

mov AX, 4C00h
int 21h

a dw 0x05
b dw 0x0F
c dw 0x04
y dw 0x0

;(a / 2) + (b / 3) + (c / 4)