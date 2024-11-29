global _start

section .rodata
  hello_world: db "Hello world!", 0xA, 0x0

section .text

extern _print_str

_start:
  enter 0, 0

  push eax
  push ecx
  push edx
  push hello_world
  call _print_str
  add esp, 4
  pop edx
  pop ecx
  pop eax

  mov eax, 0x01
  mov ebx, 0
  int 0x80
  leave
