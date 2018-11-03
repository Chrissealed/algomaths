#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe01, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 7,
        denominator1 => 12,
        numerator2 => 1,
        denominator2 => 4,
        which-ppcm-algorithm => 'b.p.f.',
        which-irreducible-fraction-algorithm => 'f',
        which-pgcd-algorithm => 'f',
    );
    my Pair $P = $fraction.calculate-fractions('+');
    say "Les {$P.key}/{$P.value} du cocktail d'agrumes sont de l'orange ou du pamplemousse.";
    say();
    $fraction.numerator1 = 1;
    $fraction.denominator1 = 1;
    $fraction.numerator2 = $P.key;
    $fraction.denominator2 = $P.value;
    $P = $fraction.calculate-fractions('−');
    say "Dans ce cocktail d'agrumes, la proportion de citron est de {$P.key}/{$P.value}.";
}

exercise_01();
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

