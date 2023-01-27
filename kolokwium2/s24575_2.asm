org 100h

mov AH, 00h
int 16h

cmp AL, '0'
jle end

cmp AL, '9'
jle start

jmp end

start:

sub AL, '0'
mov BL, AL

mov AX, 0013h ; 320x200
int 10h

mov CX, 100
mov DX, 300

mov AH, 0Ch
mov AL, 50

petla:
    int 10h
    inc DX
    dec BL
    cmp BL, 00h
    jne petla


end:
mov AX, 4C00h
int 21h