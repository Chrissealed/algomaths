#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-e, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 5,
        denominator1 => 3,
        reduce-fraction1 => False,
        nominator2 => 4,
        denominator2 => 1,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'euclide',
    );
    my Pair $P = $fraction.calculate-fractions('add-up');
    say();
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 2;
    $fraction.denominator2 = 7;
    $P = $fraction.calculate-fractions('+');
}

exercise_e();
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

