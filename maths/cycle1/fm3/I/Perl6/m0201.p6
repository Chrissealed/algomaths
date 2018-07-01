#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe01, :examples;

sub answering {
    say "D'après la définition de la division euclidienne on a :";
    say "a ÷ 7 = 23 + r et r < 7. Le reste est strictement inférieur au diviseur 7";
    say "donc les restes possibles sont r = 0, 1, 2, 3, 4, 5 ou 6.";
    say "";
    my Int $d = 7;
    my Int $q = 23;
    say "On calcule le dividende a pour tous les restes possibles :";
    my Int $r = 0;
    say "r = 0, alors a = $q × $d + $r d'où a = ", $q * $d;
    $r = 1;
    say "r = 1, alors a = $q × $d + $r d'où a = ", $q * $d + $r;
    $r = 2;
    say "r = 2, alors a = $q × $d + $r d'où a = ", $q * $d + $r;
    $r = 3;
    say "r = 3, alors a = $q × $d + $r d'où a = ", $q * $d + $r;
    $r = 4;
    say "r = 4, alors a = $q × $d + $r d'où a = ", $q * $d + $r;
    $r = 5;
    say "r = 5, alors a = $q × $d + $r d'où a = ", $q * $d + $r;
    $r = 6;
    say "r = 6, alors a = $q × $d + $r d'où a = ", $q * $d + $r;
}

exercise_01();
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

