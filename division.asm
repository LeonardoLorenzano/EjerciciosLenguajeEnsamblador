section .text
    global division

division: 
    ; RDI es el divisor 
    ; RSI es el divividendo 

    ; Vlidacion de division entre cero
    cmp rsi, 0
    je .es_cero

    mov rax, rdi 
    cqo                      ; Extendemos el signo
    idiv rsi                 ; Hacemos la dividion de RDI entre RSI 
    ret                      ; Retornamos el resultado en rax

.es_cero: 
    mov rax, 0               ; Retornamos cero si el divisor es cero
    ret