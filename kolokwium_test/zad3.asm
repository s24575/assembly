org 100h

mov AX, 0x1AD0
mov BX, 0x0020
mul BL

mov AX, 0x4C00
int 21h