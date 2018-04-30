#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe04;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 2072,
        integer2 => 370,
    );
    say 'a.';
    $pgcd.euclide_algorithm();
    say();
    say 'b.';
    $pgcd.subtraction_algorithm();

    say qq:to/EOM/;

Pour déterminer le PGCD de 2072 et 370 par l'algorithme d'Euclide il faut 3
opérations tandis que par l'algorithme des soustractions, il en faut 8.
La recherche du PGCD de 2072 et 370 est plus courte par l'algorithme d'Euclide.
EOM
}

exercise_04();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

