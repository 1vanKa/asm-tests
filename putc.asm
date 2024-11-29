global _putc

section .text

_putc:
  enter 0, 0
  mov eax, 0x04
  mov ebx, 1
  mov ecx, [ebp+8]
  mov edx, 1
  int 0x80
  leave
  ret

