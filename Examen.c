#include <stdio.h>
#include <time.h>
void powerPoint(){
    printf("Abriendo LibreOffice impress\n");
    system("libreoffice --impress");
}
int main(){
    clock_t start,end;
    double cpu_time_used;
    start=clock();
    powerPoint();
    end=clock();
    cpu_time_used=(double)(end-start);
    printf("Ciclos de reloj utilizados:%f\n",cpu_time_used);

return 0;

}
 