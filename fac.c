#include <stdio.h>

int factorial(int n);

int main() {
    int num;
    printf("Ingresa un número entero para calcular su factorial: ");
    scanf("%d", &num);
     printf("El factorial de %d es: %d\n", num, factorial(num));

    return 0;
}
int factorial(int n) {
    
    if (n == 0 || n == 1) {
        printf("%d! = 1 \n", n);
        return 1;
    }

    else {
        int resultado = n* factorial(n - 1);
        printf("%d! = %d * %d!\n", n, n, n - 1);
        return resultado;
    }
}
