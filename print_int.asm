global _print_int10

section .text
extern _putc

_print_int10:
  enter 0, 0
  mov eax, [esp+8]
  cmp eax, 0
  jge _print_int10_negative_end
  push eax
  push '-'
  call _putc
  add esp, 4
  pop eax
_print_int10_negative_end:
  leave
  ret