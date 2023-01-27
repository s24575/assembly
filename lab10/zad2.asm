org 100h

mov AH, 02h
mov CX, 10
petla:
    mov DL, "A"
    int 21h
    call enter
    loop petla

enter:
    mov AH, 02h
    mov DL, 0Ah
    int 21h
    mov DL, 0Dh
    int 21h
    ret

end:
    mov AX, 4C00h
    int 21h