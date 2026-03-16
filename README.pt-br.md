# Estudos de Baixo Nível & Assembly
[🇺🇸 Read this in English](README.md)

Este repositório é dedicado à minha jornada pela **Programação de Baixo Nível**, com foco em **Assembly (ASM)** e sua integração com **C/C++**. Como estudante de Engenharia de Computação, utilizo este espaço para documentar *troubleshooting*, interface hardware-software e a lógica fundamental das operações da CPU.

O objetivo central é dominar como sistemas complexos manipulam dados ao nível de registradores, indo além das abstrações de alto nível para entender a mecânica "bare metal" da computação.

---

### 🏗️ Foco Técnico
* **Arquitetura:** x86/x86_64 (Sintaxe AT&T).
* **Ferramentas:** GCC, GDB e ambiente Linux (Zorin OS).
* **Conceitos Chave:** Manipulação de registradores (EAX, EBX, etc.), ciclos de Carga/Escrita na memória e Assembly Inline.

---

### 📖 Entendendo a Lógica (Análise Técnica)

Neste repositório, exploramos a **Arquitetura Load/Store**. CPUs modernas não realizam operações aritméticas diretamente na RAM. O processo segue um ciclo rigoroso:

1. **Carga (Load):** O dado é copiado de um endereço de memória (RAM) para um **Registrador** (armazenamento interno de alta velocidade da CPU).
2. **Processamento:** A **ULA (Unidade Lógica e Aritmética)** realiza a operação (SOMA, SUB, etc.) usando os dados contidos nos registradores.
3. **Escrita (Store):** O resultado é então movido do registrador de volta para um endereço de memória específico na RAM.

Este controle de baixo nível permite otimização extrema de performance e uma compreensão profunda de como comandos de software se traduzem fisicamente em pulsos elétricos e estados de portas lógicas.

---

### 🛠️ Como Compilar e Rodar
Para compilar os arquivos C com Assembly inline em ambiente Linux:

1. **Compilar:**
   gcc nome_do_arquivo.c -o nome_do_executavel

2. **Executar:**
   ./nome_do_executavel

---

### 📋 Roadmap de Progresso
- [x] **Básico de Assembly Inline:** Movimentação de dados entre variáveis C e registradores.
- [x] **Lógica Aritmética:** Implementação de soma/subtração diretamente na ULA.
- [ ] **Fluxo de Controle:** Implementação de loops e saltos condicionais (JUMP NZ).
- [ ] **Gestão de Memória:** Manipulação direta de ponteiros via ASM.

---

<p align="center">
  <i>Este repositório reflete minha perspectiva analítica sobre sistemas complexos. Parte da minha trajetória acadêmica em Engenharia de Computação.</i>
</p>
