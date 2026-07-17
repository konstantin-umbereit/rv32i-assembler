# test_programs/test_all_instructions.s
# 
# Tests all instructions + pseudos + directives supported by the assembler.

.globl _start
.text
.align 4

_start:

    add     x1, x2, x3
    sub     x4, x5, x6
    and     x7, x8, x9
    or      x10, x11, x12
    xor     x13, x14, x15
    sll     x16, x17, x18
    srl     x19, x20, x21
    sra     x22, x23, x24
    slt     x25, x26, x27
    sltu    x28, x29, x30

    addi    x1, x0, 42
    andi    x2, x1, 0x0F
    ori     x3, x2, 0xF0
    xori    x4, x3, 0xAA
    slli    x5, x4, 3
    srli    x6, x5, 2
    srai    x7, x6, 4
    slti    x8, x7, 100
    sltiu   x9, x8, 200

    la      x10, data_start
    lb      x11, 0(x10)
    lh      x12, 4(x10)
    lw      x13, 8(x10)
    lbu     x14, 12(x10)
    lhu     x15, 16(x10)

    li      x16, 0xDEADBEEF
    sb      x16, 20(x10)
    sh      x16, 24(x10)
    sw      x16, 28(x10)

    beq     x0, x0, br1
br1:
    bne     x1, x0, br2
br2:
    blt     x0, x1, br3
br3:
    bge     x1, x0, br4
br4:
    bltu    x0, x1, br5
br5:
    bgeu    x1, x0, br6
br6:

    jal     x17, jal_target
jal_target:
    lui     x18, 0x12345
    auipc   x19, 0x00001
    jalr    x20, x10, 0

    ecall
    ebreak


    nop
    mv      x21, x1
    li      x22, 0xCAFEBABE
    j       end_label
    call    dummy_func
dummy_func:
    ret
    tail    end_label

end_label:
    ebreak


.data
.align 4
data_start:
    .word   0x11223344
    .half   0x5566
    .byte   0x77
    .ascii  "ABC"
    .asciz  "Test"
    .align  4
    .word   0xDEADBEEF