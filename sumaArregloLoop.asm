section .text   
    ; Definimos el arreglo de 5 numeros, cada uno de 5 bytes 'dd' 
    arreglo dd 10, 20, 30, 40, 50
    n equ 5                               ; Constante con el numero de elemtos 

section .text
    glbal _start

_start: 
    ; Preparamos nuestros registros 
    lea rsi, [arreglo]                      ; RSI = Dirección base del arreglo (Source Index)
    mov rcx, n                              ; RCX = 5 (Contador para el LOOP)
    xor rax, rax                            ; RAX = 0 (Acumulador para la suma total)
    xor, rbx, rbx                           ; RBX = 0 (Registro temporal para cada número)

ciclo: 
    ; Cuerpo del ciclo  
    mov ebx, [rsi]                          ; Movemos el número actual de la memoria a EBX
    add rax, rbx                            ; Sumamos el valor al total acumulado en RAX

    ; Avanzamos al siguiente numero 
    add rsi, 4                              ; Apuntamos al siguiente número (cada 'dd' ocupa 4 bytes)

    ; Instruccion del loop 
    loop ciclo                              ; 1. RCX = RCX - 1
                                            ; 2. Si RCX > 0, salta a 'ciclo'

finalizar:
    ; --- SALIDA AL SISTEMA ---
    ; Para ver el resultado con "echo $?", movemos la suma a EDI
    mov edi, eax            ; EDI = Resultado de la suma (150)
    mov eax, 60             ; Código de llamada 'sys_exit' (60)
    syscall