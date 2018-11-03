#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-o, :examples;
use operations-on-fractions;

sub answering {
    say "Le nombre 1 est équivalent à la fraction 1/1.";
    my $fraction = OperationsOnFractions.new(
        numerator1 => 5,
        denominator1 => 12,
        numerator2 => 4,
        denominator2 => 21,
        numerator3 => 3,
        denominator3 => 7,
        # On joue sur les options de réduction dans une liste
        # chaînée d'opérations
        reduce-last-one => False,
        reduce-last-once => False,
        which-ppcm-algorithm => 'bp',
        which-irreducible-fraction-algorithm => 'e',
        which-pgcd-algorithm => 'e',
    );
    my Pair $P = $fraction.calculate-fractions('+−');
    say();
    $fraction.numerator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.numerator2 = 1;
    $fraction.denominator2 = 1;
    # Ne pas oublier de mettre à Nil les attributs inemployés
    $fraction.numerator3 = Nil;
    $fraction.denominator3 = Nil;
    # On réduit cette fois la dernière fraction
    $fraction.reduce-last-one = True;
    $P = $fraction.calculate-fractions('+');
    say();
    put q/Pour faire les calculs en une seule passe/;
    put q|84/84 − 36/84 + 35/84 + 16/84 = 99/84 = 33/28.|;
}

exercise_o();
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

