#include <stdio.h>

void
display_result() {
    int num = 180;
    int divisor = 15;
    int q, m, n;
    
    q = num / divisor; 
    puts("Existe-t-il un entier q tel que 180 = 15q ?");

    if (num % divisor == 0) {
        printf("%d est divisible par %d :\n",num, divisor);
        printf("il existe un entier q tel que %d x q = %d : %d.\n", divisor, num, q);
    } 
    else
        printf("%d n'est pas le produit de %d par un entier q.\n", num, divisor);

    puts("");
    puts("Existe-t-il un entier q tel que 260 = 15q ?");
    num = 260;
    q = num / divisor;
    m = divisor * q;
    n = divisor * (q + 1);
    if (num % divisor == 0) {
        printf("%d est divisible par %d :\n", num, divisor);
        printf("il existe un entier q tel que %d x q = %d : %d.\n", divisor, num, q);
    }
    else {
        printf("%d n'est pas le produit de %d par un entier q :\n", num, divisor);
        printf("%d ÷ %d = %d\n", num, divisor, q);
        printf("%d x %d = %d\n", divisor, q, m);
        printf("%d x %d = %d\n", divisor, q+1, n);
        printf("or %d < %d < %d\n", m, num, n);
        printf("et comme %d et %d sont deux entiers consécutifs,\n", q, q+1);
        printf("alors il n'existe pas d''entier q tel que %d = %d x q.\n", num, divisor);
    }
}

