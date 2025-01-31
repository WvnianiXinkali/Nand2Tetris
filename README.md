# 🖥️ Nand2Tetris - Building a Modern Computer from First Principles

*From Boolean gates to a Tetris game - A journey through computer architecture and systems design*

---

## 🏗️ Overview
This repository documents my implementation of the **[Nand2Tetris](https://www.nand2tetris.org/)** course projects, constructing a complete computer system starting with elementary logic gates. This two-part journey covers both hardware and software stack development:

**Part 1: Hardware**  
`NAND Gate` → `ALU` → `CPU` → `Computer` → `Assembler`

**Part 2: Software**  
`VM Translator` → `Compiler` → `OS` → `Tetris Game`

---

## 🔧 Tech Stack
![HDL](https://img.shields.io/badge/Hardware-HDL_(Hardware_Description_Language)-red)
![Assembly](https://img.shields.io/badge/Assembly-Hack_(16-bit)-yellowgreen)
![VM](https://img.shields.io/badge/Virtual_Machine-Jack_Bytecode-blueviolet)
![Compiler](https://img.shields.io/badge/Compiler-Jack→VM_Bytecode-orange)

---

## 🧩 Project Roadmap

### **Part 1: Hardware Layer**
| Project | Components Built | Key Features |
|---------|------------------|--------------|
| [Boolean Logic](/projects/01) | AND, OR, XOR, MUX | NAND-only implementations |
| [Arithmetic](/projects/02) | HalfAdder, FullAdder, ALU | 16-bit operations in HDL |
| [Memory](/projects/03) | Bit, Register, RAM | Sequential logic implementation |
| [Machine Language](/projects/04) | CPU, Computer | 16-bit Hack architecture |
| [Assembler](/projects/05) | Hack Assembler | Symbol resolution, binary translation |

### **Part 2: Software Layer**
| Project | Components Built | Key Features |
|---------|------------------|--------------|
| [VM I](/projects/06) | Stack Arithmetic | Basic VM Translator |
| [VM II](/projects/07) | Program Control | Function calling/return |
| [Compiler I](/projects/08) | Syntax Analysis | Jack→VM Code Generation |
| [Compiler II](/projects/09) | Object-Oriented | Methods/Constructors |
| [OS](/projects/10) | Math, Memory, I/O | Screen/Keyboard drivers |
| [Tetris](/projects/11) | Final Game | Full-stack integration |

---

## 🛠️ Technical Achievements
```text
1. Designed 16-bit CPU with 28K gates
2. Created assembler with 2-pass architecture
3. Built compiler supporting OOP features
4. Implemented OS with memory allocation
5. Achieved 58 FPS in Tetris on Hack platform
