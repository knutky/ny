

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
//#include "asmdef.h"

// Declaring that assembly function is provided elsewhere
//extern int asm_function(int a, int b);
	

// This should be the C equivalent to the assembly implementation
void c_function(int array[], int a){
	array[2] = a;
    
}

int add(int a, int b){
    int c;
    c = a + b;
    return c;
}

int main(){
    /*
    int a = 10;
    int b = 6;
    int sum;
    sum = asm_function(a , b);
	printf("Sum = %d\n", sum);
    */
    int array[] = {1, 2, 3};
    int a = 4;

    c_function(array, a);

    for (int j = 0; j < 3; j++)
        printf("%d ", array[j]);
    
    return 0;
}