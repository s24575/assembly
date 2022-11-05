org 100h

mov AX, [a]
mov BL, 0x02
div BL
mov CL, AL

mov AX, [b]
mov BL, 0x03
div BL
add CL, AL

mov AX, [c]
mov BL, 0x04
div BL
add CL, AL

mov byte [y], CL

mov AX, 4C00h
int 21h

a dw 0x05
b dw 0x0f
c dw 0x04
y dw 0h