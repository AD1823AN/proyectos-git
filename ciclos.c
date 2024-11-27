#include <stdio.h>
#include <time.h>

int main() {
    clock_t inicio, fin;
    double tiempo_total;
    
    inicio = clock(); // Obtiene el tiempo de inicio
    
    // Código cuyo rendimiento deseas medir
    // ...

    fin = clock(); // Obtiene el tiempo de fin

    tiempo_total = (double)(fin - inicio) / CLOCKS_PER_SEC; // Calcula el tiempo transcurrido en segundos

    printf("Tiempo total: %.2f segundos\n", tiempo_total);

    return 0;
}


