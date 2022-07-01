#include <stdio.h>
#include <stdlib.h>

void alpha(char c) {
  char *p = &c;

  while (*p <= 90) {
    printf("%c ", *p);
    ++*p;
  }
printf("\n");
}

int main() {
  alpha(65);
  return 0;
}

