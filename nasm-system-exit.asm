global _start
_start:
    mov eax, 1
    mov ebx, 42
    sub ebx, 29
    int 0x80

; --------------------------------------------------------------------------------------
; COMANDOS PARA COMPILAR E RODAR (TERMINAL):
; --------------------------------------------------------------------------------------
; 1) Montar o objeto:
;    nasm -f elf32 nasm-system-exit.asm -o nasm-system-exit.o
;
; 2) Linkar o binário (transformar em executável):
;    ld -m elf_i386 nasm-system-exit.o -o nasm-system-exit
;
; 3) Executar o programa:
;    ./nasm-system-exit
;
; 4) Verificar o status de saída (EBX):
;    echo $?
; --------------------------------------------------------------------------------------