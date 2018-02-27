#include <stdio.h>

void
display_result() {
    int q1 = 36 / 6;
    int q2 = 42 / 6;
    int q3;

    if (q2 == q1 + 1) {
        puts("36 et 42 sont des multiples consécutifs de 6 :");
        printf("36 = 6 x %d\n", q1);
        printf("42 = 6 x %d\n", q2);
    }
    else
        puts("36 et 42 ne sont pas des multiples consécutifs de 6");

    q1 = 42 / 7;
    q2 = 56 / 7;
    if (q2 == q1 + 1) {
        puts("42 et 56 sont des multiples consécutifs de 7 :");
        printf("42 = 7 x %d\n", q1);
        printf("56 = 7 x %d\n", q2);
    }
    else {
        puts("42 et 56 ne sont pas des multiples consécutifs de 7");
        printf("en effet %d = %d x 7\n", q1*7, q1);
        printf("et %d = %d x 7\n", q2 * 7, q2);
        printf("or la différence entre %d et %d est %d\n", q2, q1, q2 - q1);
        puts("il existe donc un entier intermédiaire multiple de 7 :");
        q3 = q1 + 1;
        printf("%d x 7 = %d\n", q3, q3*7);
        printf("et donc %d < %d < %d.\n", q1*7, q3*7, q2*7);
    }
}

