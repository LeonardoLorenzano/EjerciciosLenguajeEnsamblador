section .text
    global obtener_menor

obtener_menor:
    ; XMM0 <- Primer número decimal
    ; XMM1 <- Segundo número decimal

    ; 1. Comparamos los dos números
    ucomisd xmm0, xmm1    ; Comparamos XMM0 con XMM1

    ; 2. Si XMM0 es menor que XMM1, ya tenemos el resultado en XMM0
    jb .final             ; "Jump if Below": Si XMM0 < XMM1, saltar al final

    ; 3. Si no saltó, significa que XMM1 es el menor (o son iguales)
    movsd xmm0, xmm1      ; Movemos XMM1 a XMM0 para retornarlo

.final:
    ret                   ; El resultado siempre se devuelve en XMM0