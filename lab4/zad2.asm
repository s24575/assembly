org 100h

mov byte [string + 3], "$"
;replace 4th character with "$"

mov AH, 09h
mov DX, string
int 21h

mov AX, 4C00h
int 21h

string db "EXAMPLE STRING"

;print first 3 characters of a string