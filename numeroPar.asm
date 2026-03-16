section .text
    global numeroPar

numeroPar:
    ; RDI = nmero a verificar
    
    mov rax, rdi        ; Preparamos el dividendo en RAX
    cqo                 ; IMPORTANTE: Extendemos el signo a RDX
    
    mov rcx, 2          ; El divisor será 2
    idiv rcx            ; Dividimos RDX:RAX entre 2
                        ; Resultado (cociente) en RAX, Residuo en RDX

    ; Ahora comparamos el residuo que quedó en RDX
    cmp rdx, 0
    je .es_par          ; Si el residuo es 0, salta a la etiqueta .es_par
    
    ; Si no saltó, es impar
    mov rax, 0          ; Retornamos 0 (Falso)
    ret

.es_par:
    mov rax, 1          ; Retornamos 1 (Verdadero)
    ret