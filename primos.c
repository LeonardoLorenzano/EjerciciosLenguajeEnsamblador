#include <stdio.h>

// Declaramos la función externa que hiciste en ensamblador
// Recibe un entero (va a RDI) y devuelve un entero (viene de RAX)
extern long long contar_primos(long long n);

int main() {
    long long limite;

    printf("Ingresa el número límite para contar primos: ");
    if (scanf("%lld", &limite) != 1) {
        printf("Entrada inválida.\n");
        return 1;
    }

    // Llamamos a la función de ensamblador
    long long total_primos = contar_primos(limite);

    printf("Entre el 1 y el %lld hay %lld números primos.\n", limite, total_primos);

    return 0;
}