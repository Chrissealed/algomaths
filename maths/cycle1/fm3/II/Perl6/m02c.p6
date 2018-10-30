#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-c, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 7,
        denominator1 => 9,
        numerator2 => 2,
        denominator2 => 1,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => '*', # factorization,
        which-pgcd-algorithm => '*', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('subtract');
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

