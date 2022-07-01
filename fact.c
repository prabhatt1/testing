#include <stdio.h>
#include <stdlib.h>

int fact(int n) {
  int *p = &n;
  int fac = 1;
  while (*p) {
    fac *= *p;
    --*p;
  }
  return fac;
}

int main() {
  int n;
  printf("Enter the number:\n");
  scanf("%d", &n);
  printf("Factorial of number is:%d\n", fact(n));
  return 0;
}
