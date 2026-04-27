section .data
    arreglo dd 10, 20, 30, 40, 50               ; Nuestro arreglo de 5 elementos 
    n arreglo equ 5                             ; Constante que define el numero de elementos

section .text
    global _start

_start: 
    xor eax, eax                                ; EAX = 0, aqui guardamos la suma total 
    xor rcx, rcx                                ; RCX = 0, este sera nuestro contador

ciclo_suma: 
    cmp rcx, n                                  ; Comparamos el contador con n 
    jge fin                                     ; Si i >= n, terminamos el ciclo 

    ; SUMA: acumulador = acumulador + arreglo[i]
    ; Usamos [base + indice * escala]
    add eax, [arreglo + rcx * 4]

    inc rcx                                     ; i++ (Siguiente elemento)
    jmp ciclo_suma                              ;   Volvemos a empezar el ciclo 

fin:
    ; Al llegar aquí, el resultado está en EAX
    ; (Para un examen, podrías moverlo a otro registro o guardarlo en memoria)