#include <stdio.h>
#include <string.h>

void reverse(char arr[]) {
  int n = strlen(arr) - 1;
  char *p = arr + n;
  while (p >= arr) {
    printf("%c", *p);
    --p;
  }
  printf("\n");
}

int main() {
  char arr[1000];
  printf("Enter the string:");
  scanf("%s", arr);
  reverse(arr);
  return 0;
}
