section .text
    global mi_strlen

mi_strlen:
    ; RDI contiene el apuntador a la cadena enviado desde C

    xor rax, rax                        ; Limpia RAX por completo (RAX = 0, por ende AL = 0)
    mov rcx, -1                         ; RCX = 0xFFFFFFFFFFFFFFFF (Seguro de vida infinita)
    cld                                 ; Asegura dirección hacia adelante (DF = 0)

    repnez scasb                        ; Escanea la cadena buscando el 0 de AL

    not rcx                             ; Invierte los bits de RCX (Obtenemos: pasos dados + 1)
    dec rcx                             ; Le restamos 1 para ignorar el caracter nulo '\0'
    
    mov rax, rcx                        ; Coloca la longitud final en RAX para devolverla a C
    ret

; Esta línea elimina las advertencias (warnings) de GCC que viste en pantalla
section .note.GNU-stack noalloc noexec nowrite progbits