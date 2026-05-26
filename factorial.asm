section .text
    global factorial 

factorial: 
    ; RDI contiene el numero 'n' ingresado por el usuario (Desde C)

    mov rax, 1                        ; Inicializamos el acumulador en 1 (caso base para 0! y 1!)
    mov rcx, rdi                      ; Copiamos 'n' a RCX para ir bajando 

.bucle: 
    cmp rcx, 1                        ; ¿RCX es menor o igual a 1?
    jle .fin                          ; Si es así, terminamos (evita multiplicar por 1 o 0)

    imul rax, rcx                     ; RAX = RAX * RCX 
    dec rcx                           ; RCX--
    jmp .bucle                        ; Salto incondicional al inicio para evaluar el nuevo RCX

.fin: 
    ret                               ; Retorna el resultado en RAX de forma segura a C