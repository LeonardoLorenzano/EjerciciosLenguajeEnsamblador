#include <stdio.h>

extern long mayorDeTresNumeros(long a, long b, long c);

int main(int argc, char const *argv[]) {
    
    int num1, num2, num3, resultado; 

    printf("Ingrese el primer numero: "); 
    scanf("%d", &num1); 

    printf("Ingrese el segundo numero: ");
    scanf("%d", &num2);

    printf("Ingrese el tercer numero: ");
    scanf("%d", &num3);

    resultado = mayorDeTresNumeros(num1, num2, num3);
    
    printf("El mayor de los tres numeros es: %d\n", resultado);

    return 0;
}