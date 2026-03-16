section .text
    global FizzBuzz

FizzBuzz: 
    ; RDI es el numero a evaluar

    ; Es divisible por 15 
    mov rax, rdi 
    cqo 
    mov rcx, 15
    idiv rcx
    cmp rdx, 0
    jne .solo_3
    mov rax, 3                 ; Si el residuo es 0, es divisible por ambos
    ret 

.solo_3: 
    mov rax, rdi 
    cqo 
    mov rcx, 3 
    idiv rcx
    cmp rdx, 0 
    jne .solo_5
    mov rax, 1                ; Divisible por 3
    ret 

.solo_5: 
    mov rax, rdi 
    cqo
    mov rcx, 5
    idiv rcx 
    cmp rdx, 0
    jne .ninguno 
    mov rax, 2               ; Divisible por 5
    ret  

.ninguno: 
    xor rax, rax             ; 0 si no es ninguno
    ret