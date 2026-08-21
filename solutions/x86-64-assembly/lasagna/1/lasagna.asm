
tempoForno equ 40

section .text
global expected_minutes_in_oven
global remaining_minutes_in_oven
global preparation_time_in_minutes
global elapsed_time_in_minutes

expected_minutes_in_oven:
    mov rax, tempoForno
    ret

remaining_minutes_in_oven:
; preciso mover o tempoForno ao rax para ele não fazer a conta com lixo de memória
    mov rax, tempoForno
    sub rax, rdi
    ret

preparation_time_in_minutes:
; rdi numero de camadas.
    mov rax, rdi
    imul rax, 2 
    ; posso usar o shl para deslocar um bit à esquerda, assim multiplicaria por 2
    ret

elapsed_time_in_minutes:
    ; rdi = número de camadas
    ; rsi = minutos no forno
    ; LEA resolve a equação: rax = (rdi * 2) + rsi nativamente
    lea rax, [rdi * 2 + rsi]
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
