org 100h

mov ah, 3Ah
mov dx, jajco

int 0x21

mov ax, 0x4C00
int 0x21

jajco db "GS18", 0h
