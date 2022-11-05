org 100h

mov dh, 12
mov dl, 32
mov ah, 0x02
int 0x10

mov dx, name
mov ah, 0x09
int 21h

mov ax, 0x4C00
int 0x21

name db "Grzegorz Sawicki", "$"
