default rel

section .rodata
extern combining_function
global RED
global BLUE
global GREEN

RED: dd 0xFF000000
BLUE: dd 0x0000FF00
GREEN: dd 0x00FF0000
; essas cores são dwords
; endereços hexadecimais possuem 4 bytes (16 bits)

section .data
global base_color
base_color dd 0xFFFFFF00

section .text
global get_color_value
global add_base_color
global make_color_combination

get_color_value:
    mov eax, dword [rdi]
    ret
    ;ele quer que ret em 32 bits, então usamos eax

add_base_color:
    mov eax, dword [rdi]
    mov dword [base_color], eax
    ret

make_color_combination:
    push rdi ;como receberemos rdi e rsi salvaremos o rdi para não perdê-lo (pilha)
    mov edi, dword [rel base_color]
    mov esi, dword [rsi]
    call combining_function
    pop rdi ;utilizado para recuperar o ponteiro intacto para rdi
    mov dword [rdi], eax
    ret

call combining_function

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
