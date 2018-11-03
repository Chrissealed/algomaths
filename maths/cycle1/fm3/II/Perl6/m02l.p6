#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-l, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 4,
        denominator1 => 11,
        numerator2 => 3,
        denominator2 => 7,
        numerator3 => 2,
        denominator3 => 1,
        which-ppcm-algorithm => 'bf', # by-prime-factors,
        which-irreducible-fraction-algorithm => 'f', # factorization,
        which-pgcd-algorithm => 'f', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('subtractx2');
    say();
    say "Equivalent de ces calculs en une seule passe :";
    say "4/11 − 3/7 − 2 = 28/77 − 33/77 − 154/77 = −159/77.";
}

exercise_l();
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

