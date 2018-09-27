#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe02c, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 3,
        denominator1 => 14,
        reduce-fraction1 => False,
        nominator2 => 7,
        denominator2 => 10,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-prime-factors', # '2',
        which-irreducible-fraction-algorithm => 'subtraction', # '2',
        which-pgcd-algorithm => 'factorization', # '*' ou '3',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('add-up');
}

exercise_02c();
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

