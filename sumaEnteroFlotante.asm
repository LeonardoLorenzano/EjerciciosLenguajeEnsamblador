section .text
    global sumaEnteroFlotante

sumaEnteroFlotante:
    ; RDI = num_entero
    ; XMM0 = num_decimal

    cvtsi2sd xmm1, rdi      ; Convertimos el entero de RDI a double en xmm1
    addsd xmm0, xmm1        ; Sumamos: xmm0 = xmm0 + xmm1
    
    ret                     ; El resultado se devuelve en XMM0