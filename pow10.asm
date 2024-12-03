global _pow10

section .text

_pow10:
  enter 0, 0
  mov ebx, [esp+8]
  mov eax, 1
_pow10_loop_start:
  cmp ebx, 0
  jle _pow10_loop_end
  imul eax, 10
  dec ebx
  jmp _pow10_loop_start
_pow_10_loop_end:
  leave
  ret