#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe01, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0201.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "D'après la définition de la division euclidienne on a :";
    $t.tput: "a ÷ 7 = 23 + r et r < 7. Le reste est strictement inférieur au diviseur 7";
    $t.tput: "donc les restes possibles sont r = 0, 1, 2, 3, 4, 5 ou 6.";
    $t.tput: "";
    my Int $d = 7;
    my Int $q = 23;
    $t.tput: "On calcule le dividende a pour tous les restes possibles :";
    my Int $r = 0;
    $t.tput: "r = 0, alors a = $q × $d + $r d'où a = {$q * $d}";
    $r = 1;
    $t.tput: "r = 1, alors a = $q × $d + $r d'où a = {$q * $d + $r}";
    $r = 2;
    $t.tput: "r = 2, alors a = $q × $d + $r d'où a = {$q * $d + $r}";
    $r = 3;
    $t.tput: "r = 3, alors a = $q × $d + $r d'où a = {$q * $d + $r}";
    $r = 4;
    $t.tput: "r = 4, alors a = $q × $d + $r d'où a = {$q * $d + $r}";
    $r = 5;
    $t.tput: "r = 5, alors a = $q × $d + $r d'où a = {$q * $d + $r}";
    $r = 6;
    $t.tput: "r = 6, alors a = $q × $d + $r d'où a = {$q * $d + $r}";

    $t.closefile = True;
    $t.tput: '';
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

