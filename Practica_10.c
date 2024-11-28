#include<stdio.h>
#define PI 3.141592654
int main()
{
    int x=5;
    int y=10;
    int z=++x*y--;
    printf("x : %d\n",x);
    printf("y++ : %d\n",y);
    printf("z:%d\n",z);
    

    printf("pause");
    return 0;
    
}
