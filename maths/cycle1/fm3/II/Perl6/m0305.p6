#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe05, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 2,
        denominator1 => 3,
        numerator2 => 1,
        denominator2 => 5,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 's',
        which-pgcd-algorithm => 's',
    );
    my Pair $P = $fraction.calculate-fractions('+');
    say();
    $fraction.numerator1 = 1;
    $fraction.denominator1 = 1;
    $fraction.numerator2 = $P.key;
    $fraction.denominator2 = $P.value;
    $P = $fraction.calculate-fractions('-');
    say "Il reste {$P.key}/{$P.value} de la récolte de cerises pour manger en dessert.";
}

exercise_05();
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

