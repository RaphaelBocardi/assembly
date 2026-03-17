; --------------------------------------------------------------------------------------
; File: nasm-hello-world.asm
; 
; DESCRIPTION: Prints "Hello, world!" to the terminal using sys_write (Linux x86).
; DESCRIÇÃO: Imprime "Hello, world!" no terminal usando sys_write (Linux x86).
; --------------------------------------------------------------------------------------

global _start

section .data
    msg db "Hello, world!", 0x0a ; '0x0a' é o caractere de nova linha (\n)
    len equ $ - msg               ; Cálculo automático do tamanho da string

section .text

_start:
    ; Preparando a escrita (sys_write)
    mov eax, 4      ; Código da System Call: 4 (sys_write)
    mov ebx, 1      ; Onde escrever: 1 (stdout - o seu terminal)
    mov ecx, msg    ; O que escrever: o endereço da nossa mensagem
    mov edx, len    ; Quantas letras escrever: o tamanho da mensagem
    int 0x80        ; Interrupção para executar a chamada ao Kernel

    ; Preparando a saída (sys_exit)
    mov eax, 1      ; Código da System Call: 1 (sys_exit)
    mov ebx, 0      ; Status de saída: 0 (Sucesso!)
    int 0x80        ; Interrupção para encerrar o programa

; --------------------------------------------------------------------------------------
; COMANDOS PARA COMPILAR E RODAR (COPIE E COLE NO TERMINAL):
; --------------------------------------------------------------------------------------
; nasm -f elf32 nasm-hello-world.asm -o nasm-hello-world.o
; ld -m elf_i386 nasm-hello-world.o -o nasm-hello-world
; ./nasm-hello-world
; --------------------------------------------------------------------------------------