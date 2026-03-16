global .text
    global multiplicar

multiplicar: 
    ; RDI tiene el primer numero 'a'
    ; RSI tiene el segundo numero 'b' 

    mov rax, rdi            ; RAX = primer numero  
    imul rax, rsi           ; RAX = RAX * RSI (a * b) 

    ret