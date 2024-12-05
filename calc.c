// __asm__(
// ".globl _start\n"
// // "extern main"
// ".text\n"
// "_start:\n"
// "  call main\n"
// "  movq %rax, %rdi\n"
// "  movq $60, %rax\n"
// "  syscall\n"
// );

static const int cnst = 11;
static int gvar = 9;
static int gevar;

typedef struct {
  char a[32];
} str;

str foo() {
  str s = {.a={0}};
  return s;
}

int main()
{
  // write(1, "Hello world!\n", 14);
  int s = 1;
  for (int i = 0; i < 5; ++i)
  {
    asm(
      "incl -8(%rbp)\n"
      );
    // ++s;
  }
  str str = foo();
  gevar = gvar + cnst;
  asm(
  // "  movq -8(%rbp), %rdi\n"
  "  movl gevar, %edi\n"
  "  movq $60, %rax\n"
  "  syscall\n"
  );
}
