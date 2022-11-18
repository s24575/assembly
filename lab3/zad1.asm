org 100h

mov AH, 39h
mov DX, string
int 21h

mov AX, 4C00h
int 21h

string db "GS18", 0h

;create a folder