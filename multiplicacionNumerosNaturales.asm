section .text
    global multiplicacionNumerosNaturales

multiplicacionNumerosNaturales: 
    mov rax, 1
    mov rcx, rdi

    cmp rcx, 1
    jl .final

.loop: 
    imul rax, rcx
    dec rcx
    cmp rcx, 1
    jg .loop

.final: 
    ret