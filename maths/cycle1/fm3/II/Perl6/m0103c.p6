#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe03c, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => -5,
        denominator1 => 22,
        reduce-fraction1 => False,
        nominator2 => 7,
        denominator2 => 6,
        reduce-fraction2 => False,
        which-ppcm-algorithm => '1', # 'by-larger-number-multiple',
        which-irreducible-fraction-algorithm => '2', # 'subtraction',
        which-pgcd-algorithm => '1', # 'euclide',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('+');
}

exercise_03c();
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

