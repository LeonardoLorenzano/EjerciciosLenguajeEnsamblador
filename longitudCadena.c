#include <stdio.h>

// Forzamos a que C sepa que la función devuelve 64 bits completos (long long)
extern long long mi_strlen(const char *cadena);

int main() {
    char texto[100];

    printf("Ingresa una palabra o frase: ");
    // Leemos la cadena incluyendo espacios
    if (fgets(texto, sizeof(texto), stdin) == NULL) {
        return 1;
    }

    // Eliminamos el salto de línea '\n' que mete fgets al final
    for(int i = 0; texto[i] != '\0'; i++) {
        if(texto[i] == '\n') {
            texto[i] = '\0';
            break;
        }
    }

    // Llamamos a tu función de ensamblador
    long long longitud = mi_strlen(texto);
    
    // Imprimimos usando %lld para enteros de 64 bits
    printf("La longitud de la cadena es: %lld caracteres.\n", longitud);
    return 0;
}