#include <stdio.h>
#include <string.h>

void ascii() {

  int i;
  char ch = 32;
  ;
  for (i = 32; i <= 255; i++) {
    printf("%d  %c", i, ch);
    printf("\n");
    ch++;
  }
}

Driver program to test above function int main() {
  ascii();
  return 0;
}
//
