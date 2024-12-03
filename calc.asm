global _start

section .rodata
  hello_world: db "Hello world!", 0xA, 0x0

section .text

extern _print_str
extern _print_int10

_start:
  enter 0, 0

  push hello_world
  call _print_str
  add esp, 4

  push 123
  call _print_int10
  add esp, 4

  mov eax, 0x01
  mov ebx, 0
  int 0x80
  leave
