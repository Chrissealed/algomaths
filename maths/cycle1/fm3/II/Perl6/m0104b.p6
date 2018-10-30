#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe04b, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => -6,
        denominator1 => 11,
        numerator2 => -6,
        denominator2 => -11,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'divisors-listing',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('+');
}

exercise_04b();
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

