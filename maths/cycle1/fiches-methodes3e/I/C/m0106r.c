#include <stdio.h>

void
display_result() {
    int n1 = 500 / 11;
    int n2 = 500 / 17;
    int n, m;
    while (n1 * 11 <= 800) {
        m = n1 * 11;
        // Comparaison de tous les multiples de n2 avec ceux de n1 
        while (n2 * 17 <= 800) {
            n = n2 * 17;
            if (n == m) {
                if (n >= 500 && n <= 800) {
                    printf("Le nombre %d est multiple à la fois de 11 et de 17\n", n);
                    puts("et est compris entre 500 et 800");
                }
                if (n % 2 == 0)
                    printf("de plus %d est un nombre pair.\n", n);
                else
                    printf("mais %d est un nombre impair.\n", n);
                // Quand un match est trouvé, continuer à la première boucle
                // au cas où plusieurs matchs seraient possibles 
                break;
            }
            n2++;
        }
        n1++;
        // Réinitialisation de n2 pour la boucle suivante 
        n2 = 500 / 17;
    }
}

