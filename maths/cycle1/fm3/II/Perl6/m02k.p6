#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-k, :examples;
use operations-on-fractions;

sub answering {
    say "Le nombre 3 est équivalent à la fraction 3/1.";
    my $fraction = OperationsOnFractions.new(
        numerator1 => 3,
        denominator1 => 1,
        numerator2 => 4,
        denominator2 => 27,
        numerator3 => 4,
        denominator3 => 9,
        which-ppcm-algorithm => 'bf', # by-prime-factors,
        which-irreducible-fraction-algorithm => 'f', # factorization,
        which-pgcd-algorithm => 'f', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('add-upx2');
    say();
    $fraction.numerator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.numerator2 = 1;
    $fraction.denominator2 = 3;
    $fraction.numerator3 = Nil;
    $fraction.denominator3 = Nil;
    $fraction.which-pgcd-algorithm = 'e'; # euclide;
    $P = $fraction.calculate-fractions('−');
    say();
    say "Equivalent de ces calculs en une seule passe :";
    say "3 + 4/9 − 1/3 + 4/27 = 81/27 + 12/27 − 9/27 + 4/27 = 88/27.";
}

exercise_k();
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

