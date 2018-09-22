#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe05c, :examples;

sub answering {
    say "On doit calculer π/10 + 3π/4;";
    say "le plus petit multiple commun non nul de 10 et 4 est 20; 2 × 2 × 5 = 20;";
    say "π/10 + 3π/4 = 2π/20 + 15π/20 = 17π/20.";
}

exercise_05c();
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

