#include <stdio.h>
#include <stdlib.h>
#include "display.h"

int
main() {
    int p = 0;
    puts("# Exercice 2 :");
    puts("# -----------");
    puts("# Trouver les multiples de 53 compris entre 300 et 500.");
    puts("-----------------------------------------------------------------------------------");
    puts("");
    p = display_wording();
    if (p == 0) {
        wording();
    }
    p = put_up_correct_version();
    if (p == 0) {
        display_result();
    }
    exit(EXIT_SUCCESS);
}

