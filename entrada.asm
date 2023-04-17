section .data
    msg1 db "Digite seu nome: "
    len1 equ $- msg1
    msg2 db "O nome digitado foi: "
    len2 equ $- msg2

section .bss
    nome RESB 2

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, len1
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, nome
    mov edx, 6
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, len2
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, nome
    mov edx, 6
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80