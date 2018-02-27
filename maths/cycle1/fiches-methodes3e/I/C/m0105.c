#include <stdio.h>
#include <stdlib.h>
#include "display.h"

int
main() {
    int p = 0;
    puts("# Exercice 5 :");
    puts("# -----------");
    puts("# Démontrer que la somme de trois multiples consécutifs de 5 est un multiple de 15.");
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


