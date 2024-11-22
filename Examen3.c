#include <stdio.h>
#include <time.h>    
#include <unistd.h>   
 
#define BILLION  10000

int main (){
  int d;
  double area;
  double r;
    double pi=3.1416;
     struct timespec start, end;
    clock_gettime(CLOCK_REALTIME, &start);
    sleep(3);
printf("Ingrese el diametros");
scanf("%d",&d);
r= d/2;
 area=pi*r*r;
printf("El area total es de: %f\n",area);
clock_gettime(CLOCK_REALTIME, &end);
     double time_spent = (end.tv_sec - start.tv_sec) +
                        (end.tv_nsec - start.tv_nsec) * BILLION;
 
    printf("El tiempo es %f micro", time_spent);
return 0; 
}