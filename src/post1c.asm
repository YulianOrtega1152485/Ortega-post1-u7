; post1c.asm
; Imprime cadena carácter por carácter con posición

org 100h

mov si, mensaje
mov dh, 05h      ; fila 5
mov dl, 10h      ; columna inicial

siguiente:
    mov al, [si]
    cmp al, '$'
    je fin

    ; posicionar cursor
    mov ah, 02h
    mov bh, 00h
    int 10h

    ; imprimir carácter verde
    mov ah, 09h
    mov bh, 00h
    mov bl, 0Ah
    mov cx, 1
    int 10h

    inc si
    inc dl
    jmp siguiente

fin:
    mov ah, 4Ch
    int 21h

; ===== DATOS =====
mensaje db 'UNIDAD 7 - PANTALLA Y TECLADO$', 0