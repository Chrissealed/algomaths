#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-g, :examples;
use operations-on-fractions;

sub answering {
    say "0,5 exprimé sous forme de fraction = 1/2.";
    my $fraction = OperationsOnFractions.new(
        numerator1 => 1,
        denominator1 => 2,
        numerator2 => 5,
        denominator2 => 6,
        which-ppcm-algorithm => 'b.l.n.m.', # by-larger-number-multiples,
        which-irreducible-fraction-algorithm => '×', # factorization,
        which-pgcd-algorithm => '#', # divisors-listing,
    );
    my Pair $P = $fraction.calculate-fractions('−');
}

exercise_g();
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

