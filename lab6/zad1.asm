org 100h

mov AH, 00h
int 16h
cmp AL, 5Fh
mov AH, 02h
je equal
jg bigger

mov DL, "<"
jmp end

equal:
mov DL, "="
int 21h
jmp end

bigger:
mov DL, ">"

end:
int 21h
mov AX, 4C00h
int 21h

;input a character, compare to "_" and print ">", "==" or "<"