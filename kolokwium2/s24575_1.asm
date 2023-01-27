org 100h

mov AH, 00h
int 16h

mov AH, 0Eh
int 10h

cmp AL, 'A'
jl print_second

cmp AL, 'Z'
jle between_A_and_Z

cmp AL, 'a'
jl print_second

cmp AL, 'z'
jle between_a_and_z

print_second:
    int 10h

jmp end

between_A_and_Z:
    add AL, 5
    jmp print_second

between_a_and_z:
    sub AL, 5
    jmp print_second

end:
mov AX, 4C00h
int 21h