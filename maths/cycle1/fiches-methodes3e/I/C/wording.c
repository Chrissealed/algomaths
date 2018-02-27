#include <stdio.h>
#include <stdlib.h>

int
display_wording() {
    char answer, eol;
    printf("Afficher la méthode ? O|n : ");
    scanf("%c%c", &answer, &eol);
    if (answer == 'o' || answer == 'O') { 
        puts("");
        return(0);
    } else {
        return(1);
    }
}

