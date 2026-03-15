.global _start

section .text
    _start: 
        mov eax, 4

        int 0x80

section .data