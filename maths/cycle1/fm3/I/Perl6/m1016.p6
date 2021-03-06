#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method10 :methodwording, :exe16, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1016.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: qq:to/EOM/;
On désigne par n un entier naturel, alors le nombre entier suivant est n + 1.
On a n + 1 = n × 1 + 1 donc PGCD(n+1 ; n) = PGCD(n ; 1) = 1.
On a utilisé la propriété suivante : a et b désignant deux entiers,
si a > b, PGCD(a ; b) = PGCD(b ; r) où r est le reste de la division euclidienne
de a par b, cf. méthode 7.
On peut aussi utiliser la propriété : a et b désignant deux entiers,
si a = b, alors PGCD(a ; b) = a = b et si a > b, PGCD(a ; b) = PGCD(b ; a ― b),
cf. méthode 5.
Donc n et n + 1 sont des nombres premiers entre eux.
Deux nombres entiers consécutifs sont donc des nombres premiers entre eux.
EOM

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_16();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

