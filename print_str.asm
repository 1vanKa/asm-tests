global _print_str

section .text

extern _strlen

_print_str:
  enter 0, 0
  push dword [ebp+8]
  call _strlen
  mov edx, eax
  add esp, 4
  mov eax, 0x04
  mov ebx, 0x1
  mov ecx, [ebp+8]
  int 0x80
  leave
  ret
