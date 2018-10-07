#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe06, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 4,
        denominator1 => 15,
        reduce-fraction1 => False,
        nominator2 => 1,
        denominator2 => 3,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P = $fraction.calculate-fractions('+');
    say();
    $fraction.nominator1 = 1;
    $fraction.denominator1 = 1;
    $fraction.nominator2 = $P.key;
    $fraction.denominator2 = $P.value;
    $P = $fraction.calculate-fractions('-');
    say "Il reste ", $P.key, "/", $P.value, " du gâteau.";
}

exercise_06();
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

