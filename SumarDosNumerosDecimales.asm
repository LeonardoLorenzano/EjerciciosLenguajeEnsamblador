section .data 
    num1 dd 10.5
    num2 dd 20.6 
    resultado dd 0.0 

section .text 
    global _start

_start: 
    ; 1. Cargar los números en registros XMM
    movss xmm0, [num1]              ; Move Scalar Single-Precision
    movss xmm1, [num2] 

    ; 2. Realizar la suma
    addss xmm0, xmm1                ; xmm0 = xmm0 + xmm1

    ; 3. EL PASO QUE FALTA: Convertir a entero para la salida
    ; Convertimos el contenido de XMM0 a un entero de 32 bits en EDI
    cvttss2si edi, xmm0             ; EDI ahora tiene el entero 15

    ; Finalizar programa
    mov eax, 60
    syscall