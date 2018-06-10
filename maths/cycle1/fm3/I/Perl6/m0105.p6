#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe05, :examples;

sub answering {
    say "Trois multiples consécutifs de 5 s'écrivent :";
    say "5(n-1), 5n et 5(n+1) où n est un entier différent de 0";
    say  "or 5(n-1) + 5n + 5(n+1) = 5n - 5 + 5n + 5n + 5 = 15n.";
    say "La somme de trois multiples consécutifs  de 5 peut donc s'écrire 15n,";
    say "produit de 15 par un entier.";
    say "La somme de trois multiples consécutifs de 5 est donc bien un multiple de 15.";
    say "Prenons un exemple :";
    my Int $m = 5*3 + 5*4 + 5*5;
    my Int $n = 4*15;
    say "5 × 3 + 5 × 4 + 5 × 5 = $m";
    say "et 4 × 15 = $n";
}

exercise_05();
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

