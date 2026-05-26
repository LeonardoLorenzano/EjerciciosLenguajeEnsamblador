secton .text
    global resta 

resta:
    ; RDI tiene el primero numero ingresado (int a)
    ; RSI tiene el segundo numero ingresado (int b)

    mov rax rdi                 ; RAX = primer numero 
    sub rax, rsi                ; Ahora RAX = RAX - RSI 

    ret 