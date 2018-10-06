#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-j, :examples;
use operations-on-fractions;

sub answering {
    say "Le nombre 10 est équivalent à la fraction 10/1.";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 10,
        denominator1 => 1,
        reduce-fraction1 => False,
        nominator2 => 3,
        denominator2 => 10,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P = $fraction.calculate-fractions('-');
    say();
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 5;
    $fraction.denominator2 = 15;
    $fraction.reduce-fraction2 = True;
    $fraction.which-pgcd-algorithm = 'euclide';
    $P = $fraction.calculate-fractions('+');
    say();
    say "Equivalent de ces calculs en une seule passe :";
    say "10 − 3/10 + 5/15 = 300/30 − 9/30 + 10/30 = 301/30.";
}

exercise_j();
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

