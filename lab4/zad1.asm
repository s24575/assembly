org 100h

mov ah, 0Ah
mov dx, string
int 21h

mov ah, 0Eh
mov al, 0ah
int 10h
mov al, 0Dh
int 10h

mov ah, 0Eh
mov al, [string+4]
int 10h

mov ax, 4c00h
int 21h

string db 0Fh