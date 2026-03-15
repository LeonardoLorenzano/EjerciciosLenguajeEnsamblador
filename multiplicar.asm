global .text 
    multiplicar 

multiplicar:
    ; RDI recibe el prrimer numero
    ; RSI recibe el segundo numero 

    mov rax, rdi              ; RAX = primer numero 
    imul rax, rsi             ; RAX = RAX * RSI (int a * int b)

    ret 