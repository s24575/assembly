org 100h

mov DX, print
call print

;mov AH, 02h
;mov DH, 
;int 21h
;mov DX,
;int 21h

mov AX, 0x4C00
int 21h

tekst db "tekst"
print_text dw 0

print:
mov AH, 09h
int 21h
ret