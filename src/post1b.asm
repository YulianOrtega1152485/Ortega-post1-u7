; post1b.asm
; Uso de INT 10h para cursor y color

org 100h

; Limpiar pantalla
mov ax, 0600h
mov bh, 07h
mov cx, 0000h
mov dx, 184Fh
int 10h

; Cursor fila 2, columna 10
mov ah, 02h
mov bh, 00h
mov dh, 02h
mov dl, 0Ah
int 10h

; Mostrar 'A' amarillo sobre azul
mov ah, 09h
mov al, 'A'
mov bh, 00h
mov bl, 1Eh
mov cx, 1
int 10h

; Cursor fila 3, columna 10
mov ah, 02h
mov dh, 03h
mov dl, 0Ah
int 10h

; Mostrar 'U'
mov ah, 09h
mov al, 'U'
mov bl, 0Ch
mov cx, 1
int 10h

; Mover cursor a la derecha
inc dl
mov ah, 02h
int 10h

; Mostrar '7'
mov ah, 09h
mov al, '7'
mov bl, 0Ch
mov cx, 1
int 10h

mov ah, 4Ch
int 21h