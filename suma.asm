section .text
    global suma

suma:
    ; RDI recibe el primer termino (int a)
    ; RSI recibe el segundo termino (int b)

    mov rax, rsi          ; RAX es el primer numero
    add rax, rsi          ; RAX = RAX + RSI 

    ret