#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-i, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => -16,
        denominator1 => 33,
        numerator2 => -9,
        denominator2 => 20,
        which-irreducible-fraction-algorithm => '*',
        which-pgcd-algorithm => ':',
    );
    my Pair $P = $fraction.calculate-fractions('*');
}

exercise_i();
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

