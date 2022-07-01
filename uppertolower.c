#include<stdio.h>
#include <string.h>
    void ltu(char str[]) {
  int l = 0;
  int h = strlen(str);

  while (l < h) {
    if (str[l] >= 65 && str[l] <= 90) {
      str[l] = str[l] + 32;
    }
    l++;
  }
}

int main() {
  char str[100];
  printf("enter the string:\n");
  scanf("%s", str);
  ltu(str);
  printf("%s\n", str);
  return 0;
}

