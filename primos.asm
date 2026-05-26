section .text
    global contar_primos

contar_primos:
    ; --- PROTEGER REGISTROS (Obligatorio para RBP y RBX) ---
    push rbp
    push rbx

    ; --- Bloque de entrada (Desde C) ---
    mov rbx, rdi            ; RBX = Límite original 'N'

    ; --- Inicialización de registros principales ---
    xor rbp, rbp            ; RBP = Acumulador de primos encontrados (inicia en 0)
    mov rcx, 2              ; RCX = Candidato 'X' (empezamos a evaluar desde el 2)

.ciclo_principal:
    cmp rcx, rbx            ; ¿X > N?
    jg .fin                 ; Si el candidato supera el límite del usuario, terminamos

    mov rsi, 2              ; RSI = Divisor 'Y' (inicia en 2 para cada nuevo X)

.ciclo_division:
    cmp rsi, rcx            ; ¿El divisor 'Y' alcanzó a 'X'?
    jge .es_primo           ; Si llegó a X sin dividirse exacto, ¡ES PRIMO!

    ; --- Operación de División Matemática ---
    mov rax, rcx            ; RAX = Copiamos el dividendo 'X'
    cqo                     ; Extiende el signo de RAX a RDX (Limpia RDX para la división)
    idiv rsi                ; Divide RDX:RAX entre RSI ('Y'). El residuo queda en RDX.

    cmp rdx, 0              ; ¿El residuo es cero?
    je .no_es_primo         ; Si el residuo es 0, se pudo dividir, entonces NO es primo

    inc rsi                 ; RSI++ (Siguiente divisor 'Y')
    jmp .ciclo_division

.es_primo:
    inc rbp                 ; Incrementamos nuestro acumulador de primos en RBP

.no_es_primo:
    inc rcx                 ; RCX++ (Siguiente número candidato 'X')
    jmp .ciclo_principal

.fin:
    ; --- Bloque de retorno a C ---
    mov rax, rbp            ; Movemos el resultado final al registro principal RAX

    ; --- RESTAURAR REGISTROS (En orden inverso al que se guardaron) ---
    pop rbx
    pop rbp
    ret                     ; Volvemos a C de forma segura

; --- Línea extra para quitar los warnings de GCC ---
section .note.GNU-stack noalloc noexec nowrite progbits