#include <stdio.h>

extern double sumaEnteroFlotante(long entero, double flotante); 

int main(int argc, char const *argv[]) {
    
    long num_entero;
    double resultado, num_decimal; 

    printf("Ingrese un numero entero: "); 
    scanf("%ld", &num_entero);

    printf("Ingrese un numero decimal: "); 
    scanf("%lf", &num_decimal);

    resultado = sumaEnteroFlotante(num_entero, num_decimal); 

    printf("\nEl resultado de %ld + %.2f es: %.2f\n", num_entero, num_decimal, resultado);


    return 0;
}