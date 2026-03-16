#include <stdio.h>

extern int numeroPar(int num);

int main(int argc, char const *argv[]) {
    
    int num; 

    printf("Ingrese un numero: "); 
    scanf("%d", &num); 

    if (numeroPar(num) == 1) {
        printf("El numero es par.\n");
    } else {
        printf("El numero es impar.\n");
    }
    
    return 0;
}