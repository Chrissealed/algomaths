#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-m, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 5,
        denominator1 => 1,
        numerator2 => 1,
        denominator2 => 5,
        which-ppcm-algorithm => 'b.p.f.', # by-prime-factors,
        which-irreducible-fraction-algorithm => '*', # factorization,
        which-pgcd-algorithm => '×', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('-');
}

exercise_m();
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

