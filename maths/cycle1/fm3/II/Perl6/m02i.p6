#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-i, :examples;
use operations-on-fractions;

sub answering {
    say "Le nombre 1 est équivalent à la fraction 1/1.";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 1,
        denominator1 => 1,
        reduce-fraction1 => False,
        nominator2 => 1,
        denominator2 => 2,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P = $fraction.calculate-fractions('+');
    say();
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 3;
    $fraction.denominator2 = 4;
    $P = $fraction.calculate-fractions('+');
    say();
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 5;
    $fraction.denominator2 = 6;
    $P = $fraction.calculate-fractions('+');
    say();
    say "Equivalent de ces calculs en une seule passe :";
    say "1 + 1/2 + 3/4 + 5/6 = 12/12 + 6/12 + 9/12 + 10/12 = 37/12.";
}

exercise_i();
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

