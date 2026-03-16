section .text
    global suma

suma:
    ; RDI recibe el primer numero (int a)
    ; RSI recibe el segundo numero (int b)

    mov rax, rdi                ; RAX = primer numero  
    add rax, rsi                ; RAX = RAX + RSI 

    ret 