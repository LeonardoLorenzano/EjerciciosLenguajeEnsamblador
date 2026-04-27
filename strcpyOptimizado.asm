section .text
    global mi_strcpy_pro

; -----------------------------------------------------------------------------
; mi_strcpy_pro
; RDI = Destino (donde vamos a copiar)
; RSI = Origen (la cadena que queremos copiar)
; -----------------------------------------------------------------------------

mi_strcpy_pro:
    push rdi                ; Guardamos el destino original para devolverlo
    push rsi                ; Guardamos el origen
    
    ; PASO 1: Calcular la longitud del origen
    mov rdi, rsi            ; Ponemos el origen en RDI para usar SCASB
    mov al, 0               ; Buscamos el carácter nulo
    mov rcx, -1             ; "Seguro de vida infinita"
    cld                     ; Aseguramos dirección hacia adelante (DF=0) [cite: 144]
    
    repne scasb             ; Busca el 0
    
    ; Ahora calculamos cuántos bytes encontramos
    not rcx                 ; Invierte RCX para obtener la longitud + 1 [cite: 157]
    ; RCX ahora tiene el número exacto de bytes a copiar (incluyendo el nulo)

    ; PASO 2: Copiar el bloque completo
    pop rsi                 ; Recuperamos el origen real en RSI 
    pop rdi                 ; Recuperamos el destino real en RDI
    
    ; Ya tenemos:
    ; RSI = Origen, RDI = Destino, RCX = Cantidad de bytes
    rep movsb               ; ¡COPIADO MASIVO! 
    
    ; Convención: Asegurar DF=0 al salir y retornar destino en RAX
    cld                     
    mov rax, rdi            
    ret