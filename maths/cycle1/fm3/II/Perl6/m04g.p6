#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-g, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => -3,
        denominator1 => 5,
        breakdown-factors1 => False,
        numerator2 => -15,
        denominator2 => 24,
        reduce-fraction2 => True,
        numerator3 => 8,
        denominator3 => 3,
        which-irreducible-fraction-algorithm => 'e',
        which-pgcd-algorithm => 's',
    );
    my Pair $P = $fraction.calculate-fractions('×');
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

