#include <stdio.h>

// Declaramos la función que está en Assembly
extern int FizzBuzz(long n); 

int main(int argc, char const *argv[]) {
    
    long num; 
    int resultado; 

    printf("Ingrese un numero: "); 
    scanf("%ld", &num);

    resultado = FizzBuzz(num);

    if(resultado == 3) {
        printf("FizzBuzz (Divisible por 3 y 5)\n");
    } 
    else if(resultado == 1) {
        printf("Fizz (Divisible por 3)\n");
    } 
    else if(resultado == 2) {
        printf("Buzz (Divisible por 5)\n");
    } 
    else {
        printf("No es divisible por 3 ni por 5: %ld\n", num);
    }

    return 0;
}