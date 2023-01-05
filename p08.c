#include <stdio.h>
#include <math.h>

int main()
{
float x;
float y;

	for ( x=-10 ;  x<=100.0 ; x=x+3)
	{
	if (x>=0.0)
		{
			y = sqrt(x);
			printf("The squared root of %f is %f", x, y);
		}
	else
		{
			 printf("It can't be done.");
		}
	}
}
