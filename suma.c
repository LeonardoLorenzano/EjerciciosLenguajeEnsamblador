#include <stdio.h>

extern long suma(long a, long b); 

int main(int argc, char const *argv[]) {

    long num1, num2, resultado; 

    printf("Ingrese el primer numero: "); 
    scanf("%ld", &num1); 

    printf("ingrese el segundo numero: "); 
    scanf("%ld", &num2); 

    resultado = suma(num1, num2); 

    printf("El resultado de la suma es: %ld\n", resultado); 

    return 0;
}