#include <stdio.h>

extern long sumatoriaPrimeros_N_NumerosNaturales(long n); 

int main(int argc, char const *argv[]) {

    long num1, resultado; 

    printf("Ingrese el numero: "); 
    scanf("%ld", &num1); 

    resultado = sumatoriaPrimeros_N_NumerosNaturales (num1); 

    printf("La sumatoria es: %ld\n", resultado); 
    
    return 0;
}