#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-k, :examples;
use operations-on-fractions;

sub answering {
    say "Le nombre 3 est équivalent à la fraction 3/1.";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 3,
        denominator1 => 1,
        reduce-fraction1 => False,
        nominator2 => 4,
        denominator2 => 9,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P = $fraction.calculate-fractions('+');
    say();
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 1;
    $fraction.denominator2 = 3;
    $fraction.which-pgcd-algorithm = 'euclide';
    $P = $fraction.calculate-fractions('-');
    say();
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 4;
    $fraction.denominator2 = 27;
    $fraction.which-pgcd-algorithm = 'euclide';
    $P = $fraction.calculate-fractions('+');
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

