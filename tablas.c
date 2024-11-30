#include <stdio.h>

void printMultiplicationTables(int n) {
    int i;
    int *ptr;

    printf("Tabla de multiplicar del %d:\n", n);
    for (i = 1; i <= 10; i++) {
        ptr = &n;
        printf("%d x %d = %d\n", *ptr, i, (*ptr) * i);
    }
    printf("\n");
}

int main() {
    int i;
    int *ptr;

    for (i = 1; i <= 100; i++) {
        ptr = &i;
        printMultiplicationTables(*ptr);
    }

    return 0;
}






