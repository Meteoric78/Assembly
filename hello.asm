section .data
    msg db "Olá mundo!", 0xa
    len equ $- msg

section .text
    global _start

_start:
    mov eax, 4
    mov edx, 1
    mov ecx, msg
    mov edx, len
    int 80h ;0x80

    mov eax, 1
    mov ebx, 0
    int 80h