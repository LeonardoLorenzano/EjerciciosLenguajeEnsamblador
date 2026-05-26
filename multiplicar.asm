section .text 
    global multiplicar 

multiplicar: 
    ; RDI tiene el primer numero ingresado (int a)
    ; RSI tiene el segundo numero ingresado (int b)

    mov rax, rdi                ; RAX = primer numero 
    imul rax, rsi               ; Ahora RAX = RAX * RSI 

    ret  