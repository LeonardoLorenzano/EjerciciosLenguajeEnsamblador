section .text
    global division

division: 
    ; RDI es el divisor 
    ; RSI es el dividendo 

    ; Vlidacion: division entre cero
    cmp rsi, 0                      ; ¿El dividendo es cero? 
    je .es_cero

    mov rax, rdi 
    cqo                             ; Extendemos el signo
    idiv rsi                        ; Hacemos la division de RDI entre RSI 
    ret 

.es_cero: 
    xor rax, rax                    ; Retornamos el valor de '0' 
    ret 