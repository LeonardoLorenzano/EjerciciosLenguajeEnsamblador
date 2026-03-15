#include <stdio.h>

extern long division(long a, long b); 

int main(int argc, char const *argv[]) {
    
    long num1, num2, resultado; 

    printf("Ingrese el dividendo: "); 
    scanf("%ld", &num1);

    printf("Ingrese el divisor: "); 
    scanf("%ld", &num2); 

    resultado = division(num1, num2); 

    printf("El resultado de la division es: %ld\n", resultado); 

    return 0;
}