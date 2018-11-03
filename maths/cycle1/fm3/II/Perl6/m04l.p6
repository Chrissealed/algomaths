#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-l, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 3,
        denominator1 => 5,
        breakdown-factors1 => False,
        numerator2 => 5,
        denominator2 => 7,
        breakdown-factors2 => False,
        numerator3 => 7,
        denominator3 => 9,
        reduce-last-one => False,
        which-irreducible-fraction-algorithm => '÷',
        which-pgcd-algorithm => ':',
    );
    my Pair $P = $fraction.calculate-fractions('*');
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

