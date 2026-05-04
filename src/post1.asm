; post1.asm
; Imprime 3 líneas usando INT 21h

org 100h

mov dx, msg1
mov ah, 09h
int 21h

mov dx, msg2
mov ah, 09h
int 21h

mov dx, msg3
mov ah, 09h
int 21h

mov ah, 4Ch
int 21h

; ===== DATOS =====
msg1 db 'Arquitectura de Computadores', 13, 10, '$'
msg2 db 'Unidad 7: Pantalla y Teclado', 13, 10, '$'
msg3 db 'Laboratorio POST-1', 13, 10, '$'