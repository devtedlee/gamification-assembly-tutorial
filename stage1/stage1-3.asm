%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    
    mov al, [a]
    mov eax, a
    
    ;mov [a], 0x34
    mov [a], byte 0x34
    
    xor rax, rax
    ret
    
section .data
    a db 0x33
    b dw 0x1234
    c dd 0x12345678
    d dq 0x1234