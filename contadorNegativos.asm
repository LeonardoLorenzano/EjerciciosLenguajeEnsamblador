section .text
    global contadorNegativos

contadorNegativos: 
    ; RDI = a, RSI = b, RDX = c 
 
    xor rax, rax                  ; Iniciamos el contador en cero 

    cmp rdi, 0                    ; ¿Es 'a' negativo? 
    jge .probar_b                 ; Si 'a' >= 0, saltamos 
    inc rax                       ; Si no salto es negativo, sumamos 1 

.probar_b: 
    cmp rsi, 0                    ; Es 'b' negativo?  
    jge .probar_c                 ; Si 'b' >= 0, saltamos 
    inc rax                       ; Si no salto es negativo, sumamos 1

.probar_c: 
    cmp rdx, 0                    ; Es 'c' negativo?          
    jge .fin                      ; Si 'c' >= 0, saltamos 
    inc rax                       ; Si no salto es negativo, sumamos 1

.fin: 
    ret 