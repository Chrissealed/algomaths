#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-f, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 3,
        denominator1 => 1,
        reduce-fraction1 => False,
        nominator2 => 1,
        denominator2 => 2,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'divisors-listing',
    );
    my Pair $P = $fraction.calculate-fractions('-');
    say();
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 3;
    $fraction.denominator2 = 4;
    $P = $fraction.calculate-fractions('+');
}

exercise_f();
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

