#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-b, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 1,
        denominator1 => 1,
        numerator2 => 5,
        denominator2 => 7,
        which-ppcm-algorithm => 'b.l.n.m.', # by-larger-number-multiples,
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P = $fraction.calculate-fractions('subtract');
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

