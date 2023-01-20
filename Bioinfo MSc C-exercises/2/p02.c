#include <stdio.h>
#include <math.h>

int main()
{
int 	x;
float 	y;
int	a;

printf("Please enter an integer and a float\n");

a = scanf("%d %f\n", &x, &y);
printf("The value of scanf is %d", a);
printf("The value of x is %d\n", x );
printf("The value of y is %f\n", y );

}
