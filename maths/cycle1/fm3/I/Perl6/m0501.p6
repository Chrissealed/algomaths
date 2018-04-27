#!/usr/bin/env perl6

use v6;
use corrective;
use method05 :methodwording, :exe01;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'subtraction algorithm'
        integer1 => 1210,
        integer2 => 462,
    );
    $pgcd.subtraction_algorithm();
}

exercise_01();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

