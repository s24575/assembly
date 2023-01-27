org 100h

mov AH, 0Ah
mov DX, string
int 21h

mov AH, 0Eh
mov AL, 0Ah
int 10h

mov AH, 0Eh
mov AL, 0Dh
int 10h

mov AH, 00h
mov AL, [string + 1]

mov DX, 0000h
mov BX, 2h
div BX
mov BX, AX

mov byte [string + 2 + BX], "$"

mov AH, 09h
mov DX, string + 2
int 21h

mov AX, 4C00h
int 21h

string db 100