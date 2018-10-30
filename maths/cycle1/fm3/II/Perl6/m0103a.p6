#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe03a, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 19,
        denominator1 => 46,
        reduce-fraction1 => True,
        numerator2 => 17,
        denominator2 => 69,
        reduce-fraction2 => True,
        which-ppcm-algorithm => 'by-use-of-pgcd',
        which-irreducible-fraction-algorithm => 'euclide',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('−');
}

exercise_03a();
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

