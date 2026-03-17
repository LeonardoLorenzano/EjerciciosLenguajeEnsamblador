section .text
    global factorial

factorial: 
    ; RDI contiene el numero 'n' ingresado por el usuario 

    mov rax, 1                        ; Inicializamos el acumulador en 1
    mov rcx, rdi                      ; Usaremos a rcx para ir bajando 

.bucle: 
    cmp rcx, 1                        ; Comparamos el contador con 1
    jle .fin                          ; Si RCX es <= 1, saltamos al final.
    imul rax, rcx                     ; RAX = RAX * RCX 
    dec rcx                           ; rcx--; 
    jnz .bucle 

.fin: 
    ret                   