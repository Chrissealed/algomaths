#!/usr/bin/env perl6

use v6;
use corrective;
use method08 :methodwording, :exe05;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'euclide_algorithm'
        dividend => 13692,
        divisor => 6357,
    );
    $pgcd.euclide_algorithm();
}

exercise_05();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

