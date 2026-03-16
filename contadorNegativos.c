#include <stdio.h>

extern int contadorNegativos(long a, long b, long c); 

int main(int argc, char const *argv[]) {
    
    long a, b, c;  
    int resultado;

    printf("Ingrese tres numeros: ");
    scanf("%ld %ld %ld", &a, &b, &c);

    resultado = contadorNegativos(a, b, c);

    printf("Cantidad de numeros negativos: %d\n", resultado);

    return 0;
}