#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-l, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 4,
        denominator1 => 11,
        reduce-fraction1 => False,
        nominator2 => 3,
        denominator2 => 7,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P = $fraction.calculate-fractions('-');
    say();
    say "Le nombre 2 est équivalent à la fraction 2/1.";
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 2;
    $fraction.denominator2 = 1;
    $fraction.which-pgcd-algorithm = 'euclide';
    $P = $fraction.calculate-fractions('-');
    say();
    say "Equivalent de ces calculs en une seule passe :";
    say "4/11 − 3/7 − 2 = 28/77 − 33/77 − 154/77 = −159/77.";
}

exercise_l();
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

