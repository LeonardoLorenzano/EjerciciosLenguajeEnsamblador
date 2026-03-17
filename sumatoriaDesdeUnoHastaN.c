#include <stdio.h>

extern long sumatoriaDesdeUnoHastaN(int n);

int main(int argc, char const *argv[]) {
    
    int num;
    
    printf("Ingrese un numero: "); 
    scanf("%d", &num); 

    printf("La sumatoria desde 1 hasta %d es: %ld\n", num, sumatoriaDesdeUnoHastaN(num)); 

    return 0;
}
