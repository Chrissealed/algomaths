#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe03b, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 4,
        denominator1 => 3,
        numerator2 => 3,
        denominator2 => 21,
        reduce-fraction2 => True,
        numerator3 => 5,
        denominator3 => 7,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'euclide',
        which-pgcd-algorithm => 'euclide',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('subtract-add-up');
}

exercise_03b();
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

