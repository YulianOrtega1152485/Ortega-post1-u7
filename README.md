# Laboratorio Unidad 7 - Manejo de Pantalla y Teclado (NASM)

## Descripción
Implementación de programas en ensamblador x86 que utilizan las interrupciones INT 21h e INT 10h para gestionar la salida de texto, posicionamiento del cursor y uso de atributos de color en modo texto.

## Estructura del proyecto
- src/ → código fuente (.asm)
- bin/ → ejecutables (.com)
- capturas/ → evidencias del funcionamiento

## Herramientas utilizadas
- DOSBox
- NASM

## Evidencias

## 1: Salida con INT 21h

Se implementó la impresión de tres líneas de texto utilizando la interrupción INT 21h con la función 09h.

![Checkpoint 1](capturas/checkpoint1.png)

## 2: Control de pantalla con INT 10h

Se utilizó la interrupción INT 10h para limpiar la pantalla, posicionar el cursor y mostrar caracteres con atributos de color.

![Checkpoint 2](capturas/checkpoint2.png)

## 3: Cadena con posición y color

Se implementó un bucle que recorre una cadena utilizando el registro SI, posicionando el cursor y mostrando cada carácter con INT 10h en color verde.

![Checkpoint 3](capturas/checkpoint3.png)