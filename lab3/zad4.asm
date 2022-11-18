org 100h

mov DH, 12
mov DL, 32
mov AH, 02h
int 10h
;move cursor

mov DX, name
mov AH, 09h
int 21h

mov AX, 4C00h
int 21h

name db "Grzegorz Sawicki", "$"

;print name in the middle of the screen