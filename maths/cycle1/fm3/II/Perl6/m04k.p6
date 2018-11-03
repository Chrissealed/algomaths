#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-k, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => -35,
        denominator1 => 44,
        reduce-fraction1 => True,
        numerator2 => -22,
        denominator2 => 15,
        reduce-fraction2 => True,
        which-irreducible-fraction-algorithm => '÷',
        which-pgcd-algorithm => ':',
    );
    my Pair $P = $fraction.calculate-fractions('*');
}

exercise_k();
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

