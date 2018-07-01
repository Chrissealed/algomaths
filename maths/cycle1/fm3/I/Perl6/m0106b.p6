#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe06, :examples;

sub answering {
    say "Si un nombre est multiple à la fois de 11 et de 17 qui n'ont pas de diviseur";
    say "commun autre que 1, alors il est nécessairement multiple de leur produit 187";
    say "(11 × 17 = 187).";

    my Int $n1 = 187;
    my Int $n2 = 2;
    my Int $m = 0;
    while ($n1 * $n2 <= 800) {
        $m = $n1 * $n2;
        say "On a :";
        say "187 × $n2 = $m";
        if ($m > 500) {
             say "$m est un multiple à la fois de 11 et de 17 compris entre 500 et 800;";
             if ($m % 2 == 0) {
                 say "et $m est un nombre pair.";
             } else {
                 say "mais $m est un nombre impair.";
             }
        }
        $n2 += 1;
    }
}

exercise_06();
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

