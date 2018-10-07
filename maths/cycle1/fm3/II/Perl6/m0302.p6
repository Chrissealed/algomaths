#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe02, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 1,
        denominator1 => 7,
        reduce-fraction1 => False,
        nominator2 => 2,
        denominator2 => 5,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P = $fraction.calculate-fractions('+');
    say "Antoine a payé ", $P.key, "/", $P.value, " du prix total de l'automobile avant le dernier versement.";
    say();
    $fraction.nominator1 = 1;
    $fraction.denominator1 = 1;
    $fraction.nominator2 = $P.key;
    $fraction.denominator2 = $P.value;
    $P = $fraction.calculate-fractions('-');
    say "Le dernier versement représente ", $P.key, "/", $P.value, " du prix total.";
}

exercise_02();
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

