#include <stdio.h>
#include <stdlib.h>

int
put_up_correct_version() {
    char answer, eol;
    printf("Afficher le corrigé ? O|n : ");
    scanf("%c%c", &answer, &eol);
    if (answer == 'o' || answer == 'O') { 
        puts("");
        return(0);
    } else {
        return(1);
    }
}

