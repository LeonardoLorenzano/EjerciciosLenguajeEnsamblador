section .text 
    global _start

_start: 
    mov rcx, 5
    xor rax, rax 

ciclo_suma: 
    add rax, rcx 

    loop ciclo_suma             ; 1. RCX = RCX - 1
                                ; 2. ¿RCX es 0? 
                                ;  - No: Salta a 'ciclo_suma'
                                ;  - Sí: Termina el ciclo

    ; Al terminar, RAX contiene 15 (5+4+3+2+1)

    ; --- LLAMADA DE SALIDA (Indispensable en Linux) ---
    mov edi, eax        ; Movemos el resultado (15) a EDI para el código de salida
    mov eax, 60         ; El número 60 es la llamada 'sys_exit' en 64 bits
    syscall             ; Le avisamos al Kernel que terminamos