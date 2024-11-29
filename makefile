CFLAGS= -f elf32
LFLAGS= -m elf_i386

IN=$(printf '%s ' *.asm)
OBJS=$(IN:.asm=.o)

all: calc

calc: $(OBJS)
	ld $(LFLAGS) $(OBJS) -o calc

%.o: %.asm
	nasm $(CFLAGS) $< -o $@

#strlen.o: strlen.asm
#	nasm $(CFLAGS) strlen.asm -o strlen.o

#print_str.o: print_str.asm
#	nasm $(CFLAGS) print_str.asm -o print_str.o

clean:
	rm -f *.o calc

gcc:
	gcc -o calc calc.c
        
.INTERMEDIATE: %.o
