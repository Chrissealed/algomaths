#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe05, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0205.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my Int $cards = 52;
    my Int $players = 3;
    my Int $q = Int($cards / $players);
    my Int $remainder = $cards % $players;
    $t.tput: "$cards = $players × $q + $remainder.";
    $t.tput: "Chaque joueur se verra attribuer au maximum $q cartes.";
    $t.tprint: "Il restera $remainder ";
    $t.tput: $remainder > 1 ?? 'cartes.' !! 'carte.';

    $t.closefile = True;
    $t.tput: '';
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

