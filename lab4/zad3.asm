org 100h

mov ah, 0Ah
mov dx, string
int 21h

mov bh, 00h
mov bl, [string + 1] 
mov byte [string + 2 + bx], "$"

mov dh, 12
mov dl, 32
mov ah, 0x02
int 0x10

mov AH, 09h
mov DX, string + 2
int 21h

mov AX, 4c00h
int 21h

string db 16h