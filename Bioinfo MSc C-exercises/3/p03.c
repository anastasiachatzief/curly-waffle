#include <stdio.h>
#include <math.h>
#include <string.h>

int main()
{
char seq[5000];
int  i,length;
float tot=0;

scanf("%s",seq);
length=strlen(seq);
for(i=0; i<length; i++)
	{	if(seq[i]=='C'||seq[i]=='G'||seq[i]=='c'||seq[i]=='g')
		{
		tot++;
		}
	}

printf("Total gcs:  %f\n", 100*tot/length);


}

