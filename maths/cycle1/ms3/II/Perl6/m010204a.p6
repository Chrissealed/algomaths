#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :examples;
use method02 :methodwording, :examples;
use method04 :methodwording, :exe01, :examples;
use pgcd;

sub answering {
    say "1°) Le nombre de tartelettes doit diviser le nombre de framboises (411)";
    say "et le nombre de fraises (685) et doit être le plus grand possible :";
    say "c'est exactement PGCD(411 ; 685).";
    my $pgcd = PGCD.new(
        integer1 => 411,
        integer2 => 685,
    );
    my Int $p = $pgcd.euclide_algorithm();
    say "On a après les calculs : PGCD(411 ; 685) = $p.";
    say "Le nombre de tartelettes est donc $p.";
    my Int $n1 = 411 div $p;
    my Int $n2 = 685 div $p;
    say "2°) On a 411 ÷ $p = $n1 et 685 ÷ $p = $n2.";
    say "Il y aura donc $n1 framboises et $n2 fraises par tartelette.";
}

exercise_01();
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

