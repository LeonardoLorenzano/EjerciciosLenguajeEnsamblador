section .text 
    global mi_strlen

mi_strlen_cpy: 
    ; RDI = Aountador a la cadena 
    mov al, 0                           ; Cracter nulo a buscar 
    mov rcx, -1                         ; "Seguro de vida infinita"
    cld                                 ; Asegura dirección hacia adelante (DF=0)

    repnez scasb                        ; Repite mientras no sea cero 

    not rcx                             ; Invierte bits para obtener longitud + 1
    dec rcx                             ; Ajusta el tamaño real
    mov rax, rcx                        ; Retorna longitud en RAX
    ret 