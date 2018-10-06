#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-b, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 1,
        denominator1 => 1,
        reduce-fraction1 => False,
        nominator2 => 5,
        denominator2 => 7,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P = $fraction.calculate-fractions('-');
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

