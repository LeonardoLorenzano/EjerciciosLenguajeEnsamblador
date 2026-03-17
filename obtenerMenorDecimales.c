#include <stdio.h>

extern double obtenerMmenorDecimal(double a, double b);

int main() {
    double n1, n2, menor;

    printf("Ingrese el primer decimal: ");
    scanf("%lf", &n1);

    printf("Ingrese el segundo decimal: ");
    scanf("%lf", &n2);

    menor = obtenerMmenorDecimal(n1, n2);

    printf("\nEl numero menor entre %.2f y %.2f es: %.2f\n", n1, n2, menor);

    return 0;
}