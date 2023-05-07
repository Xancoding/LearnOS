# 1 "minimal.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "minimal.S"
# 1 "/usr/include/sys/syscall.h" 1 3 4
# 24 "/usr/include/sys/syscall.h" 3 4
# 1 "/usr/include/asm/unistd.h" 1 3 4
# 12 "/usr/include/asm/unistd.h" 3 4
# 1 "/usr/include/asm/unistd_64.h" 1 3 4
# 13 "/usr/include/asm/unistd.h" 2 3 4
# 25 "/usr/include/sys/syscall.h" 2 3 4






# 1 "/usr/include/bits/syscall.h" 1 3 4
# 32 "/usr/include/sys/syscall.h" 2 3 4
# 2 "minimal.S" 2

.globl _start
_start:
  movq $1, %rax
  movq $1, %rdi
  movq $st, %rsi
  movq $(ed - st), %rdx
  syscall

  movq $60, %rax
  movq $1, %rdi
  syscall

st:
  .ascii "\033[01;31mHello, OS World\033[0m\n"
ed:
