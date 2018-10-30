#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-j, :examples;
use operations-on-fractions;

sub answering {
    say "Le nombre 10 est équivalent à la fraction 10/1.";
    my $fraction = OperationsOnFractions.new(
        numerator1 => 10,
        denominator1 => 1,
        numerator2 => 5,
        denominator2 => 15,
        reduce-fraction2 => True,
        numerator3 => 3,
        denominator3 => 10,
        which-ppcm-algorithm => 'bf', # by-prime-factors,
        which-irreducible-fraction-algorithm => 'f', # factorization,
        which-pgcd-algorithm => 'f', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('+−');
}

exercise_j();
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

