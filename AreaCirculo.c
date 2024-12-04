#include<stdio.h>
#define PI 3.141592654
int main()
{
    float a,r;
    printf("ingrese el radio\n");
    scanf("%f",&r);
    while(r<=0)
    {
       printf("el radio debe ser positivo\n");
       scanf("%f",&r);
    }
    
    a=PI*r*r;
    
    printf("\nel area es: %f",a);
    system("Pause");
    return 0;
}
