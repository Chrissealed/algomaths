#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-c, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => -4,
        denominator1 => -3,
        numerator2 => -21,
        denominator2 => -20,
        which-irreducible-fraction-algorithm => 'e',
        which-pgcd-algorithm => 'e',
    );
    my Pair $P = $fraction.calculate-fractions('×');
}

exercise_c();
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

