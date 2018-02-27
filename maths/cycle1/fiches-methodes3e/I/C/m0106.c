#include <stdio.h>
#include <stdlib.h>
#include "display.h"

int
main() {
    int p = 0;
    puts("# Exercice 6 :");
    puts("# -----------");
    puts("# Trouver un nombre pair compris entre 500 et 800 qui soit multiple à la fois de");
    puts("# 11 et de 17");
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



