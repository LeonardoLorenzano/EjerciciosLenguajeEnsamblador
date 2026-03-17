#include <stdio.h>

extern long factorial(int n); 

int main(int argc, char const *argv[]) {
    
    int num; 

    printf("Ingrese un numero: ");
    scanf("%d", &num); 

    printf("El factorial de %d es: %ld\n", num, factorial(num)); 
    
    return 0;
}