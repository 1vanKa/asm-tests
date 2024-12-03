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
	gcc -o calc calc.c
        
.INTERMEDIATE: $(OBJS)
