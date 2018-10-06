#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-n, :examples;
use operations-on-fractions;

sub answering {
    say "Le nombre 1 est équivalent à la fraction 1/1.";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 1,
        denominator1 => 1,
        reduce-fraction1 => False,
        nominator2 => 5,
        denominator2 => 21,
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
    $fraction.denominator2 = 14;
    $P = $fraction.calculate-fractions('-');
}

exercise_n();
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

