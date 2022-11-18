org 100h

loop:
mov AH, 00h
int 16h
mov AH, 0Eh
int 10h
cmp AL, "q"
jne loop

mov AX, 4C00h
int 21h

;print input until "q" is pressed