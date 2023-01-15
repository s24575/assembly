org 100h

mov AX, 20 ; layers

push 1 ; stars
push AX
call print_tree
add SP, 6

push AX 
call print_trunk
add SP, 2

jmp end

print_tree:
    push BP
    mov BP, SP
    pusha

    mov CX, [BP+4]
    loop1:
        push word [BP+6]
        push word [BP+4]
        call print_layer
        add SP, 4
        dec word [BP+4]
        add word [BP+6], 2
        loop loop1

    popa
    pop BP
    ret

print_layer:
    push BP
    mov BP, SP
    pusha

    mov AH, 02h

    mov DL, ' '
    mov CX, [BP+4]
    l1:
        int 21h
        loop l1

    mov DL, '*'
    mov CX, [BP+6]
    l2:
        int 21h
        loop l2

    mov DL, 0Ah
    int 21h

    mov DL, 0Dh
    int 21h

    popa
    pop BP
    ret

print_trunk:
    push BP
    mov BP, SP
    pusha

    mov AH, 02h

    mov DL, ' '
    mov CX, [BP+4]
    trunk_l1:
        int 21h
        loop trunk_l1
    mov DL, '#'
    int 21h

    mov DL, 0Ah
    int 21h

    mov DL, 0Dh
    int 21h

    mov DL, ' '
    mov CX, [BP+4]
    dec CX
    trunk_l2:
        int 21h
        loop trunk_l2
    mov DL, '#'
    int 21h
    int 21h
    int 21h

    mov DL, 0Ah
    int 21h

    mov DL, 0Dh
    int 21h

    popa
    pop BP
    ret

end:
mov AX, 4C00h
int 21h