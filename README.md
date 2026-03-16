# Low-Level & Assembly Studies
[🇧🇷 Leia isto em Português](README.pt-br.md)

This repository is dedicated to my journey through **Low-Level Programming**, focusing on **Assembly (ASM)** and its integration with **C/C++**. As a Computer Engineering student, I use this space to document troubleshooting, hardware-software interfacing, and the fundamental logic of CPU operations.

The core objective is to master how complex systems handle data at the register level, moving beyond high-level abstractions to understand the "bare metal" mechanics of computing.

---

### 🏗️ Technical Focus
* **Architecture:** x86/x86_64 (AT&T Syntax).
* **Toolchain:** GCC, GDB, and Linux (Zorin OS) environment.
* **Core Concepts:** Register manipulation (EAX, EBX, etc.), Memory Load/Store cycles, and Inline Assembly.

---

### 📖 Understanding the Logic (Technical Breakdown)

In this repository, we explore the **Load/Store Architecture**. Modern CPUs do not perform arithmetic operations directly within the RAM. The process follows a strict cycle:

1. **Load:** Data is copied from a memory address (RAM) into a **Register** (high-speed internal CPU storage).
2. **Process:** The **ALU (Arithmetic Logic Unit)** performs the operation (ADD, SUB, etc.) using the data held in the registers.
3. **Store:** The result is then moved from the register back to a specific memory address in the RAM.

This low-level control allows for extreme performance optimization and a deeper understanding of how software commands physically translate into electrical pulses and logic gate states.

---

### 🛠️ How to Compile & Run
To compile the C files with inline Assembly in a Linux environment:

1. **Compile:**
   gcc filename.c -o output_name

2. **Execute:**
   ./output_name

---

### 📋 Progress Roadmap
- [x] **Inline Assembly Basics:** Moving data between C variables and registers.
- [x] **Arithmetic Logic:** Implementing sum/subtraction directly in the ALU.
- [ ] **Control Flow:** Implementing loops and conditional jumps (JUMP NZ).
- [ ] **Memory Management:** Direct pointer manipulation via ASM.

---

<p align="center">
  <i>This repository reflects my analytical perspective on complex systems. Part of my academic path in Computer Engineering.</i>
</p>
