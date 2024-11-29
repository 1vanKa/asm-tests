global _strlen
section .text:

_strlen:
  enter 0, 0
  mov eax, 0
  mov ecx, [ebp+8]
_strlen_loop_start:
  cmp byte [ecx], 0
  je _strlen_loop_end
  inc eax
  add ecx, 1
  jmp _strlen_loop_start
_strlen_loop_end:
  leave
  ret
