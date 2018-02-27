#include <stdio.h>

void
display_result() {
    int q1 = 4;
    int q2 = q1 + 1;
    printf("%d x n et %d x n sont deux multiples consécutifs de l'entier n.\n", q1, q2);
    puts("Plus généralement, étant donné deux entiers non nuls q1 et q2");
    puts("tels que q2 = q1 + 1, q1 x n et q2 x n sont deux multiples consécutifs de n.");
}

