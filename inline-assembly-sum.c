#include <stdio.h>

int main() {
    int resultado = 0, resultado2 = 0;
    int x = 3, y = 5;

    // --- EXEMPLO 1: O código anterior (Movimentação Manual) ---
    __asm__ (
        "movl %1, %%eax;"
        "movl %2, %%ebx;"
        "addl %%ebx, %%eax;"
        "movl %%eax, %0;"
        : "=r" (resultado)
        : "r" (x), "r" (y)
        : "%eax", "%ebx"
    );

    // --- EXEMPLO 2: O código novo do slide (Usando restrições diretas) ---
    // Aqui, "a" força o x a ir para o EAX e "b" força o y a ir para o EBX automaticamente.
    __asm__ (
        "addl %%ebx, %%eax;" // A CPU já recebe EAX=3 e EBX=5
        : "=a" (resultado2)  // O resultado sai direto do EAX (indicado pelo 'a')
        : "a" (x), "b" (y)   // x entra pelo EAX ('a') e y entra pelo EBX ('b')
    );

    printf("Exemplo 1 (Manual): %d + %d = %d\n", x, y, resultado);
    printf("Exemplo 2 (Simplificado): %d + %d = %d\n", x, y, resultado2);

    return 0;
}