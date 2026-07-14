# RISC-V-Assembler

CC = gcc
CFLAGS = -Wall -Wextra -std=c11

SRCS = src/main.c \
       src/lexer.c \
       src/parser.c\
       src/emitter.c\
       src/symbol_table.c\
       src/rv32i.c

assembler: $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o assembler
	
clean:
	rm -f assembler

.PHONY: clean

