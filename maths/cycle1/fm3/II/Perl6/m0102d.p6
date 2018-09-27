#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe02d, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 5,
        denominator1 => 6,
        reduce-fraction1 => False,
        nominator2 => 3,
        denominator2 => 4,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-larger-number-multiples', # '1',
        which-irreducible-fraction-algorithm => 'subtraction', # '2',
        which-pgcd-algorithm => 'subtraction', # '-' ou '2',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('-');
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

