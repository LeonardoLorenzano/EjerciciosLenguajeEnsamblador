section .text
    global sumatoriaPrimeros_N_NumerosNaturales

sumatoriaPrimeros_N_NumerosNaturales: 

    ; RDI es 'n', el limite de la suma 
    xor rax, rax                  ; Limpiamos RAX (contador = 0)
    mov rcx, rdi                  ; RCX sera nuesteo contador 

    cmp rcx, 0                    ; Si n es 0 o menor, termina el programa
    jle .fin 

.bucle: 
    add rax, rcx                  ; RAX = RAX + RCX 
    dec rcx                       ; Decrementamos el contafor
    jnz .bucle                    ; Si RCX no es cero, repetimos el ciclo 

.fin: 
    ret 