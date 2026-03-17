section .text
    global divisionEnteroFlotante

divisionEnteroFlotante:
    ; RDI  Recibe el numero entero 
    ; XMM0 Recibe el numero flotante 
    
    cvtsi2sd xmm1, rdi      ; Convertimos entero a double en xmm1
    
    ; Nota: El resultado se guarda en el primer registro (destino)
    divsd xmm1, xmm0        ; Operacion: xmm1 = xmm1 / xmm0
    
    movsd xmm0, xmm1        ; Movemos el resultado a XMM0 para retornar  
    
    ret