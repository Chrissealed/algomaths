#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-f, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 3,
        denominator1 => 1,
        numerator2 => 3,
        denominator2 => 4,
        numerator3 => 1,
        denominator3 => 2,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => '/', # divisors-listing,
    );
    my Pair $P = $fraction.calculate-fractions('+−');
}

exercise_f();
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

