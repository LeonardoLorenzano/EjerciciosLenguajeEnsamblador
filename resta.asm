section .text
    global resta 

resta: 
    ; RAX recibe el minuendo 
    ; RSI recibe el sustraemdo 

    mov rax, rdi            ; RAX revibe el primer numero 
    sub rax, rsi            ; RAX = RAX - RSI 

    ret  