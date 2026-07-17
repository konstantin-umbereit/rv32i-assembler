RV32I-Assembler (written in C)

Writes the opcode as raw binary data into the output file.

1. SUPPORTED INSTRUCTIONS

 Base instructions: 
    - add, sub, and, or, xor, sll, srl, sra, slt, sltu
    - addi, andi, ori, xori, slli, srli, srai, slti, sltiu,
      lb, lh, lw, lbu, lhu, jalr, ecall, ebreak
    - sb, sh, sw,
    - beq, bne, blt, bge, bltu, bgeu,
    - jal
    - lui, auipic

 Pseudo instructions:
    - nop, mv, li, la, j, ret, call, tail

 Directives:
    - .text, .data, .globl / .global, .align, .word, .half, .byte,
      .ascii, .asciz

2. USAGE ASSEMBLER

   1. Change directory to /assembler
      
   2. Compile with GCC:
```bash 
    make 
```
   3. Execute:
  
```bash 
    ./assembler [options] <file>
```

Options:
   -o <file>       Place the output into <file>.

 Without any options the assembler creates 'output.bin'in the
 directory where the assemblers executable is located.


3. LICENCE

    MIT License

    Copyright (c) 2026 Konstantin Umbereit

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
