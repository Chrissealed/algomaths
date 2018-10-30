#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe05a, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 1,
        denominator1 => 2,
        numerator2 => 2,
        denominator2 => 3,
        numerator3 => 3,
        denominator3 => 4,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => '÷', # euclide,
        which-pgcd-algorithm => '÷', # euclide,
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('++');

    say();
    $fraction.numerator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.numerator2 = 4;
    $fraction.denominator2 = 5;
    $fraction.numerator3 = 5;
    $fraction.denominator3 = 6;
    $P = $fraction.calculate-fractions('add-upx2');
}

exercise_05a();
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

