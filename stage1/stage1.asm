%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov eax, 0x1234
    mov ax, 0x1234
    mov ax, bx
    ;mov ax, ebx
    
    xor rax, rax
    ret