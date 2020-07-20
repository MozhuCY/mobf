#define _X64_
#include "mobf.h"

#include <stdio.h>

F0(void,func0,{

	puts("Hello world!");

})

F1(void,func1,char * buf,{
	INIT1(buf);
	puts(buf);
})

F4(long int,func4,long int a,long int b,long int c,long int d,{
	INIT4(a,b,c,d);
	return a + b + c + d;
})
char buffer[] = "123456789";

int main()
{
	CALL0(func0);
	char ** p = (char **)&buffer;
	CALL1(func1,p);
	long int a1 = 1,a2 = 2,a3 = 3,a4 = 4;
	CALL4(func4,a1,a2,a3,a4);
	
}
