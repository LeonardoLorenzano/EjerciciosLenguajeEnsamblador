#include <stdio.h> 

extern double divisionEnteroFlotante(long entero, double flotante); 

int main(int argc, char const *argv[]) {
    
    long num_entero; 
    double num_decimal, resultado;
    
    printf("Ingrese un numero entero: ");
    scanf("%ld", &num_entero); 

    printf("Ingerese un numero decimal: "); 
    scanf("%lf", &num_decimal); 

    resultado = divisionEnteroFlotante(num_entero, num_decimal);

    printf("\nEl resultado de %ld / %.2f es: %.2f\n", num_entero, num_decimal, resultado); 
    
    return 0;
}