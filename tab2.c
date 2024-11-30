#include <stdio.h>

void imprimirTablaMultiplicar(int num) {
    int i;
    int tabla[10];
    int *p = tabla;

    printf("Tabla de multiplicar del %d:\n", num);
    
    // Calcular la tabla de multiplicar
    for (i = 0; i < 10; i++) {
        tabla[i] = num * (i + 1);
    }

    // Imprimir la tabla de multiplicar
    for (i = 0; i < 10; i++) {
        printf("%d x %d = %d\n", num, i + 1, *(p + i));
    }
}

int main() {
    int num;

    printf("Ingrese un número del 1 al 100: ");
    scanf("%d", &num);

    if (num >= 1 && num <= 100) {
        imprimirTablaMultiplicar(num);
    } else {
        printf("Número fuera de rango.\n");
    }

    return 0;
}

