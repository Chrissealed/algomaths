#!/usr/bin/env perl6

use v6;
use corrective;
use method08 :methodwording, :exe08, :examples;

sub answering {
   say qq:to/EOM/;

a. PGCD(1596 ; 627) = 57.
b. La formule écrite par l'élève dans la cellule C2 pour obtenir le résultat indiqué
   dans cette cellule par le tableur est : =MOD(A2;B2).
c. La formule écrite par l'élève dans la cellule A3 pour obtenir le résultat indiqué
   dans cette cellule par le tableur est : =B2.

EOM
}

exercise_08();
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

