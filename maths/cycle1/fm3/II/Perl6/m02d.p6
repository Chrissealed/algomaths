#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-d, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => -5,
        denominator1 => 3,
        numerator2 => 6,
        denominator2 => 1,
        which-ppcm-algorithm => 'b.l.n.m.', # by-larger-number-multiples,
        which-irreducible-fraction-algorithm => '×', # factorization,
        which-pgcd-algorithm => '*', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('subtract');
}

exercise_d();
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

