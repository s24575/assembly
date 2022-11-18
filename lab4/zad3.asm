org 100h

mov AH, 0Ah
mov DX, string
int 21h
;buffered input

mov BL, [string + 1]
mov byte [string + 2 + BX], "$"
;put "$" at the end of the input

mov DH, 12
mov DL, 32
mov AH, 02h
int 10h
;move cursor

mov AH, 09h
mov DX, string + 2
int 21h
;print input

mov AX, 4C00h
int 21h

string db 16h
;buffer size