#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe07;

sub answering {
    my Int ($n1, $n2, $n3) = 11, 13, 15;
    my Int $m1 = $n1 * $n2;
    my Int $m2 = $n1 * $n3;

    say 'a.';
    say "Si un nombre est multiple à la fois de $n1 et de $n2 qui n'ont pas de diviseur commun";
    say "autre que 1, alors il est nécessairement multiple de leur produit $m1 ($n1 × $n2 = $m1),";
    say "or $m1 est inférieur à 150 il répond à la question. On peut trouver un nombre non nul";
    say "inférieur à 150 multiple à la fois de $n1 et de $n2, c'est $m1.";
    say 'b.';
    say "Si un nombre est multiple à la fois de $n1 et de $n3 qui n'ont pas de diviseur commun";
    say "autre que 1, alors il est nécessairement multiple de leur produit $m2 ($n1 × $n3 = $m2),";
    say "or $m2 est supérieur à 150, on ne peut donc pas trouver un nombre non nul inférieur à 150";
    say "multiple à la fois de $n1 et de $n3.";
}

exercise_07();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

