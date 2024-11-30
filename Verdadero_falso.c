#include <stdio.h>
int main (){
	int p= 1 ;
	int q = 0 ;
	int r = 1;
	int t=0;
	printf ("%d\n", p & r);
	printf ("%d\n", q & t);
	printf ("%d\n", p & q & r & t);
	printf ("%d\n", p ^ r);
	printf ("%d\n", p & r);
	
	printf("Pause");
	return 0;
}
