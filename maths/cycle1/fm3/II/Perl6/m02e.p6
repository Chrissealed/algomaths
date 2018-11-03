#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-e, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 5,
        denominator1 => 3,
        numerator2 => 2,
        denominator2 => 7,
        numerator3 => 4,
        denominator3 => 1,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'euclide',
    );
    my Pair $P = $fraction.calculate-fractions('add-upx2');
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

