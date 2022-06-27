#include <stdio.h>
#include <stdlib.h>

int sum(int *arr, int n) {

  int s = 0;
  int *p;

  for (p = arr; p < arr + n; p++) {
    s += (*p);
  }
  return s;
}

int main() {

  int i, n;
  printf("Enter the size of array:\n");
  scanf("%d", &n);
  int *arr = (int *)malloc(n * sizeof(int));
  printf("Enter the array elements:\n");
  for (i = 0; i < n; i++)
    scanf("%d", &arr[i]);
  printf("sum is:%d\n", sum(arr, n));
  return 0;
}

