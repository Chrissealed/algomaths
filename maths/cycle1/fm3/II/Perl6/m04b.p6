#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-b, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => -7,
        denominator1 => 3,
        breakdown-factors1 => False,
        numerator2 => -1,
        denominator2 => -28,
        breakdown'factors => True, # Valeur par défaut
        compute'prime'factors => True, # Valeur par défaut
        which-irreducible-fraction-algorithm => 'euclide',
        which-pgcd-algorithm => 'euclide',
    );
    my Pair $P = $fraction.calculate-fractions('*');
}

exercise_b();
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

