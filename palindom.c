#include <stdio.h>
#include <string.h>

void isPalindrome(char str[])
{
 int l = 0;
int h = strlen(str) - 1;

// Keep comparing characters while they are same
while (h > l) {
  if (str[l++] != str[h--]) {
    printf("%s is not a palindrome\n", str);
    return;
  }
}
printf("%s is a palindrome\n", str);
}

// Driver program to test above function
int main() {
  char str[100];
  printf("enter the string:");
  scanf("%s", str);
  isPalindrome(str);
  return 0;
}
