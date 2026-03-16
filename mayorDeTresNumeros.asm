section .text
    global mayorDeTresNumeros

mayorDeTresNumeros:
    ; RDI = a, RSI = b, RDX = c
    
    mov rax, rdi                       ; Asumimos que 'a' es el mayor inicialmente
    
    cmp rsi, rax                       ; ¿Es 'b' mayor que nuestro máximo actual?
    jle .probar_siguiente_numero       ; Si no, saltamos a probar el siguiente
    mov rax, rsi                       ; Si sí, actualizamos el máximo: RAX = b

.probar_siguiente_numero: 
    cmp rdx, rax                       ; ¿Es 'c' mayor que nuestro máximo actual?
    jle .fin                           ; Si no, terminamos
    mov rax, rdx                       ; Si sí, RAX = c

.fin:
    ret