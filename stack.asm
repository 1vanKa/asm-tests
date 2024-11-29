section .data
  stack_size: dd 0
  stack: times 256 dd 0

section .text

_push:
  enter 0, 0
  push eax
  push edx
  mov eax, [stack_size]
  mov edx, [ebp+8]
  mov [stack + 4*eax], edx
  inc dword [stack_size]
  pop edx
  pop eax
  leave
  ret

_pop:
  enter 0, 0
  dec dword [stack_size]
  mov eax, [stack_size]
  mov eax, [stack + 4*eax]
  leave
  ret
