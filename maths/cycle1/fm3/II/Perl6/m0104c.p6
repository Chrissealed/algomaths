#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe04c, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 7,
        denominator1 => 12,
        numerator2 => 11,
        denominator2 => 16,
        which-ppcm-algorithm => 'b.p.f.', # by-prime-factors
        which-irreducible-fraction-algorithm => '×', # factorization,
        which-pgcd-algorithm => '#', # divisors-listing,
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('−');
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

