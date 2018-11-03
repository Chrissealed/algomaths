#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-e, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 1,
        denominator1 => 3,
        numerator2 => 1,
        denominator2 => 3,
        breakdown'factors => False,
        compute'prime'factors => False,
        which-irreducible-fraction-algorithm => '*',
        which-pgcd-algorithm => '*',
    );
    my Pair $P = $fraction.calculate-fractions('*');
}

exercise_e();
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

