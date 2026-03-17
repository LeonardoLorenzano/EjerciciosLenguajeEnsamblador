section .text
    global numeroPotencia

numeroPotencia: 
    ; RDI es la base, RSI es el exponente

    mov rax, 1        ; Todo numero elevado a la 0 es 1
    mov rcx, rsi      ; Usamos RCX como nuestro contador

    cmp rcx, 0 
    je .fin

.bucle: 
   imul rax, rdi      ; RAX = RAX * base
   dec rcx            ; Exponente = eponente - 1
   jnz .bucle         ; Si el contador no es 0. repetimos

.fin: 
    ret