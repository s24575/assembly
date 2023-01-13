org 0x100

mov AH, 0Ah
mov DX, onp
int 21h
mov BP, onp + 2

main_loop:
    mov AL, [BP]

    cmp byte [BP], "$"
    je koniec

    cmp byte [BP],30h
    jge to_stack

    push return

    cmp byte [BP], "+"
    je dodawanie

    cmp byte [BP], "-"
    je odejmowanie
    
    cmp byte [BP], "*"
    je mnozenie

    cmp byte [BP], "/"
    je dzielenie

    return:
    add BP, 2
jmp main_loop

koniec:
mov AX, 4c00h
int 21h

to_stack:
    ;mov AL, byte [BP]
    sub AL, 30h
    mov AH, 00h
    push AX
jmp return

%include "operacje.asm"

onp db 40