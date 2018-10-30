#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe06b, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 15,
        denominator1 => 30,
        reduce-fraction1 => True,
        numerator2 => 3,
        denominator2 => 12,
        reduce-fraction2 => True,
        which-ppcm-algorithm => 'b.p.f.', # by-prime-factors,
        which-irreducible-fraction-algorithm => '*', # factorization,
        which-pgcd-algorithm => '*', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('−');
}

exercise_06b();
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

