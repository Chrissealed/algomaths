#!/usr/bin/env perl6

use v6;
use corrective;
use method08 :methodwording, :exe02;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'euclide_algorithm'
        dividend => 2_130_071_799,
        divisor => 789_801_903,
    );
    $pgcd.euclide_algorithm();
}

exercise_02();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

