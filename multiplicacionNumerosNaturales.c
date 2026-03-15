#include <stdio.h>

extern long multiplicacionNumerosNaturales(long n); 

int main(int argc, char const *argv[]) {

    long num1, resultado; 

    printf("Ingrese el numero: "); 
    scanf("%ld", &num1); 

    resultado = multplicacionNumerosNaturales (num1); 

    printf("El resultado es: %ld\n", resultado); 
    
    return 0;
}
