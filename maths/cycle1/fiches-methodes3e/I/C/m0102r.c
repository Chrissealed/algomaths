#include <stdio.h>

void
display_result() {
    int q = 300 / 53;
    int m = q * 53;

    printf("Le produit de %d par 53 = %d.\n", q, m);
    puts("Les multiples de 53 compris entre 300 et 500 sont :");
    m = q * 53;
    while (m <= 500) {
        printf("%d x 53 = %d.\n", q, m);
        q++;
        m = q * 53;
    }
}

