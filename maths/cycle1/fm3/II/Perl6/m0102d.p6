#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe02d, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 5,
        denominator1 => 6,
        numerator2 => 3,
        denominator2 => 4,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'subtraction',
        which-pgcd-algorithm => 'subtraction',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('subtract');
}

exercise_02d();
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

