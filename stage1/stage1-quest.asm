%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov al, [ea]
    mov [a], al
    mov ax, [eb]
    mov [b], ax
    mov eax, [ec]
    mov [c], eax
    mov rax, [ed]
    mov [d], rax
    ;mov [d], [ed]
    ;question point: why this code now work? 
    ;(error message - invalid combination of opcode and operands)
    PRINT_HEX 1, ea
    NEWLINE
    PRINT_HEX 1, a
    NEWLINE
    PRINT_HEX 2, eb
    NEWLINE
    PRINT_HEX 2, b
    NEWLINE
    PRINT_HEX 4, ec
    NEWLINE
    PRINT_HEX 4, c
    NEWLINE
    PRINT_HEX 8, ed
    NEWLINE
    PRINT_HEX 8, d
    
    xor rax, rax
    ret
    
section .bss
    a resb 1
    b resw 1
    c resd 1
    d resq 1

section .data
    ea db 0x01
    eb dw 0x1234
    ec dd 0x12345678
    ed dq 0x1212121212121212