org 0x7C00
bits 16

main:
    ; Set up teletype function
    mov ah, 0x0E

    ; Set SI to the start of our string
    lea si, msg

print_loop:
    ; Load character into AL
    lodsb

    ; If AL = 0, end of string
    or al, al
    jz done_printing

    ; Print the character
    int 0x10

    ; Loop to the next character
    jmp print_loop

done_printing:
    ; Halt the CPU
    hlt

msg db 'Hello World!', 0

; Padding and boot signature
times 510-($-$$) db 0
dw 0xAA55
