#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-j, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 121,
        denominator1 => -120,
        numerator2 => 210,
        denominator2 => 22,
        which-irreducible-fraction-algorithm => '÷',
        which-pgcd-algorithm => ':',
    );
    my Pair $P = $fraction.calculate-fractions('*');
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

