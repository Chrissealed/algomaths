#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe05, :examples;

sub answering {
    my Int $cards = 52;
    my Int $players = 3;
    my Int $q = Int($cards / $players);
    my Int $remainder = $cards % $players;
    say "$cards = $players * $q + $remainder.";
    say "Chaque joueur se verra attribuer au maximum $q cartes.";
    print "Il restera $remainder ";
    say $remainder > 1 ?? 'cartes.' !! 'carte.';
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

