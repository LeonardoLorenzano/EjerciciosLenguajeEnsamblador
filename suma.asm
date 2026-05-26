secton .text
    global suma

suma: 
    ; RDI tiene el primer numero (int a)
    ; RSI recibe el segundo numero (int b)

    mov rax, rdi                ; RAX = Primer numero (int a)
    add rax, rsi                ; Ahora RAX = RAX + RSI 

    ret 