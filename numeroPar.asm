section .text
    global numeroPar

numeroPar: 
    ; RDI es el numero a verificar 

    mov rax, rdi        
    and rdi, 1          ; Hacemos un AND con 1. 
                        ; Si el número era impar, RAX será 1.
                        ; Si era par, RAX será 0.
    
    ; Pero como queremos que devuelva 1 si es PAR:
    xor rax, 1          ; Invertimos el resultado (0 se vuelve 1, 1 se vuelve 0)
    ret