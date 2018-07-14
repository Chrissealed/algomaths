#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :examples;
use method02 :methodwording, :examples;
use method04 :methodwording, :exe02, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 540,
        integer2 => 300,
    );
    my Int $p = $pgcd.euclide_algorithm();
    say "1°) On a (après calculs) PGCD(540 ; 300) = $p.";
    say();
    say "2°) a. Raisonnons en cm : 5,40 m = 540 cm et 3 m = 300 cm.";
    say "Vu que l'on veut le moins de dalles possibles, il faut qu'elles soient les plus";
    say "grandes possibles sachant que leur longueur (en cm) doit diviser 540 et 300";
    say "(car on veut des dalles entières). Ce qu'on cherche, c'est donc PGCD(540 ; 300),";
    say "c'est à dire $p ! Chaque dalle doit donc mesurer $p cm sur $p cm.";
    my Int $n1 = 540 div $p;
    my Int $n2 = 300 div $p;
    say "b. On peut en mettre 540 ÷ $p = $n1 en longueur et 300 ÷ $p = $n2 en largeur,";
    say "ce qui fait $n1 × $n2 = ", $n1 * $n2, " dalles !";
}

exercise_02();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method01();
    put-up-method02();
    put-up-method04();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples01;
    show-examples02;
    show-examples04;
}
do-put-up-correct-version();
answering();

