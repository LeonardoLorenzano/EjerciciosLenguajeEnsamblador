#include <stdio.h>

extern long numeroPotencia(long base, long esponente); 

int main(int argc, char const *argv[]) {
    
    long base, exponente; 
    int resultado;

    printf("Ingrese la base: "); 
    scanf("%ld", &base); 

    printf("Ingrese el exponente: "); 
    scanf("%ld", &exponente); 

    resultado = numeroPotencia(base, exponente); 

    printf("El resultado es: %d\n", resultado); 

    return 0;
}