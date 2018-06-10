#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe08, :examples;

sub answering {
    my Int $m = Int(393 / 13);
    my Int $n1 = 13 * $m;
    my Int $n2 = 13 * ($m+1);
    if (393 % 13 == 0) {
        say "393 et un multiple de 13 : 13 × $m";
    } else {
        say "13 x $m = $n1 et 13 × ", $m+1, " = $n2 donc 13 × $m < 393 < 13 × ", $m+1;
        say "donc on ne peut pas trouver un entier q tel que 393 = 13q donc 393 n'est pas un";
        say "multiple de 13.";
    }

    $m = Int(793 / 13);
    $n1 = 13 * $m;
    $n2 = 13 * ($m+1);
    if (793 % 13 == 0) {
        say "$n1 = 13 * $m donc 793 est un multiple de 13.";
    } else {
        say "793 n'est pas un multiple de 13!";
        say "13 × $m = $n1 < 393 < 13 × ", $m+1, " = $n2";
    }
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

