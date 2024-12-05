CFLAGS= -f elf32
LFLAGS= -m elf_i386

cwd!=pwd

IN!=printf '%s ' *.asm
OBJS=$(IN:.asm=.o)

all: calc

calc: $(OBJS)
	ld $(LFLAGS) $(OBJS) -o calc

%.o: %.asm
	nasm $(CFLAGS) $< -o $@

clean:
	rm -f *.o calc

gcc:
	gcc -nostdlib -O0 -g -c calc.c
	ld -o calc -T script.ld calc.o

g++:
	g++ -O0 -g -o calc calc.cpp
	# ld -o calc calc.o

.INTERMEDIATE: $(OBJS)
