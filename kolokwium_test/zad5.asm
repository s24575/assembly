org 100h

mov AH, 0xFF
mov BL, 0x22
sub AH, BL

mov AX, 0x4C00
int 21h