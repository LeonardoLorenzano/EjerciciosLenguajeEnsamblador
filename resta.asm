section .text
    global resta

resta: 
    ; RDI recibe el minuendo 
    ; RSI recibe el sustraendo

    mov rax, rdi          ; RAX es el primer numero
    sub rax, rsi          ; RAX = RAX - RSI 

    ret 