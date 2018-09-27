#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe03d, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => -7,
        denominator1 => 20,
        reduce-fraction1 => False,
        nominator2 => 11,
        denominator2 => 15,
        reduce-fraction2 => False,
        which-ppcm-algorithm => '1', # 'by-larger-number-multiple',
        which-irreducible-fraction-algorithm => '3', # 'factorization',
        which-pgcd-algorithm => ':', # 'euclide' ou '1',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('-');
}

exercise_03d();
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

