#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :examples;
use method02 :methodwording, :examples;
use method04 :methodwording, :exe03, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 84,
        integer2 => 147,
    );
    my Int $p = $pgcd.euclide_algorithm();
    say "1°) Le nombre de personnes cherché doit diviser 84 ainsi que 147 et être";
    say "le plus grand possible : c'est bien sûr PGCD(84 ; 147).";
    say "On trouve (après calcul) PGCD(84 ; 147) = $p.";
    say "Ainsi $p personnes au maximum pourront bénéficier de ces friandises.";
    say();
    my Int $n1 = 84 div $p;
    my Int $n2 = 147 div $p;
    say "2°) Il y aura 84 ÷ $p = $n1 sucettes ainsi que 147 ÷ $p = $n2 bonbons par personne.";
}

exercise_03();
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

