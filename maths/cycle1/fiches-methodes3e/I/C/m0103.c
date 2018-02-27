#include <stdio.h>
#include <stdlib.h>
#include "display.h"

int
main() {
    int p = 0;
    puts("# Exercice 3 :");
    puts("# -----------");
    puts("# a. 36 et 42 sont-ils des multiples consécutifs de 6 ?");
    puts("# b. 42 et 56 sont-ils des multiples consécutifs de 7 ?");
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

