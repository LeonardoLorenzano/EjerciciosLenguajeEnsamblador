section .text
    global sumatoriaDesdeUnoHastaN

sumatoriaDesdeUnoHastaN: 
    ; RDI es el numero 'n' ingresado por el usuario 
    xor rax, rax                     ; Limpiamos RAX (acumulador = 0)
    mov rcx, rdi                     ; Nuestro contador empieza en 'n'

.bucle: 
    add rax, rcx                     ; Sumamos el valor actual de RCX al total 
    dec rcx                          ; Bajamos el contador
    jnz .bucle                       ; Repetimos mientrad no sea cero 
    ret