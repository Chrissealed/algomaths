#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe03b, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 4,
        denominator1 => 3,
        reduce-fraction1 => False,
        nominator2 => 5,
        denominator2 => 7,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-prime-factors', # '2',
        which-irreducible-fraction-algorithm => 'euclide', # '1',
        which-pgcd-algorithm => 'euclide', # ':' ou '1',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('add-up');
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 3;
    $fraction.denominator2 = 21;
    $P = $fraction.calculate-fractions('subtract');
}

exercise_03b();
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

