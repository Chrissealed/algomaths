#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe09;

sub answering {
    say "Quatre multiples consécutifs de 6 peuvent s'écrire :";
    say "6 × (n―1), 6 × n, 6 × (n+1) et 6 × (n+2)";
    say "où n est un entier naturel > 0.";
    say "6 × (n―1) + 6 × n + 6 × (n+1) + 6 × (n+2) = 6n ― 6 + 6n + 6n + 6 + 6n + 12";
    say "ce qui revient à : 24n + 12";
    say "or 24n + 12 = 228 ce qui implique que 24n = 228 ― 12 = 216";
    my Int $n = Int(216 / 24);
    say "et donc que n = 216 ÷ 24 = $n.";
    say "Pour n = $n,";
    print "6 × ", $n-1, " + 6 × $n + 6 × ", $n+1, " + 6 × ", $n+2, " = ";
    say $6*($n-1) + 6*$n + 6*($n+1) + 6*($n+2);
    say "donc les quatre multiples consécutifs de 6 dont la somme est égale à 228 sont :";
    my Int $m1 = 6*($n-1);
    my Int $m2 = 6*($n);
    my Int $m3 = 6*($n+1);
    my Int $m4 = 6*($n+2);
    say "$m1, $m2, $m3, $m4.";
    say "On a bien $m1 + $m2 + $m3 + $m4 = ", $m1+$m2+$m3+$m4, ".";
}

exercise_09();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

