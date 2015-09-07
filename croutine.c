#include <stdio.h>
#include <stdlib.h>

void* alloc_(unsigned int* size, char *varname, int *pid, int *cmtsize) 
{
	printf("within c routine. \n");
        printf("size : %d \n", *size);
        printf("varname: %s \n", varname);
        printf("pid : %d \n", *pid);
        printf("cmtsize : %d \n", *cmtsize);
	printf("end of c routine. \n");

        return malloc(*size);
}

void* alloc(unsigned int* size, char *varname, int *pid, int *cmtsize) 
{
	printf("within c routine. \n");
        printf("size : %d \n", *size);
        printf("varname: %s \n", varname);
        printf("pid : %d \n", *pid);
        printf("cmtsize : %d \n", *cmtsize);
	printf("end of c routine. \n");

        return malloc(*size);
}
