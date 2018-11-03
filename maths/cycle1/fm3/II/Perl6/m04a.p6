#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-a, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 4,
        denominator1 => 11,
        numerator2 => 5,
        denominator2 => 3,
        breakdown'factors => False,
        compute'prime'factors => False,
        which-irreducible-fraction-algorithm => 'euclide',
        which-pgcd-algorithm => 'subtraction',
    );
    my Pair $P = $fraction.calculate-fractions('×');
}

exercise_a();
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

