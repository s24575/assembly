org 100h

mov byte [string + 3], "$"

mov ah, 09h
mov dx, string
int 21h

mov ax, 4c00h
int 21h

string db "EXAMPLE STRING"