org 100h

mov AH, 0Ah
mov DX, string
int 21h
;buffered input

mov AH, 0Eh
mov AL, 0Ah
int 10h
;LF

mov AH, 0Eh
mov AL, 0Dh
int 10h
;CR

mov AH, 0Eh
mov AL, [string+4]
int 10h
;3rd character

mov AX, 4C00h
int 21h

string db 0Fh
;buffer size

;input a string, print new line (LFCR), print 3rd character