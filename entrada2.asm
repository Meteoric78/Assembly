section .data
    msg3 db "Digite seu nome: "
    len3 equ $- msg3
    msg4 db "Digite seu sobrenome: "
    len4 equ $- msg4
    msg2 db "O nome digitado foi: "
    len2 equ $- msg2
    espaco db " "
    
section .bss
    nome RESB 5
    sobrenome RESB 8

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg3
    mov edx, len3
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, nome
    mov edx, 6
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, msg4
    mov edx, len4
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, sobrenome
    mov edx, 8
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, len2
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, nome
    mov edx, 5
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, espaco
    mov edx, 1
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, sobrenome
    mov edx, 8
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80