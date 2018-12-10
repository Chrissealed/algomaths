#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe04, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0704.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 2072,
        integer2 => 370,
    );
    $t.tput: 'a.';
    $pgcd.euclide_algorithm();
    $t.tprint: "\n";
    $t.tput: 'b.';
    $pgcd.subtraction_algorithm();

    $t.tput: qq:to/EOM/;

Pour déterminer le PGCD de 2072 et 370 par l'algorithme d'Euclide il faut 3
opérations tandis que par l'algorithme des soustractions, il en faut 8.
La recherche du PGCD de 2072 et 370 est plus courte par l'algorithme d'Euclide.
EOM

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_04();
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

