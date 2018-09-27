#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe04c, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 7,
        denominator1 => 12,
        reduce-fraction1 => False,
        nominator2 => 11,
        denominator2 => 16,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'divisors-listing',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('-');
}

exercise_04c();
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

