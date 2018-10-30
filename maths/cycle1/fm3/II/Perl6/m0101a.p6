#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe01a, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 9,
        denominator1 => 5,
        reduce-fraction1 => False, # Valeur par défaut
        numerator2 => 4,
        denominator2 => 5,
        reduce-fraction2 => False, # Valeur par défaut
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('add-up');
}

exercise_01a();
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

