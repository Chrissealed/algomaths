#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe04, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 1,
        denominator1 => 3,
        numerator2 => 1,
        denominator2 => 2,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'bm',
        which-irreducible-fraction-algorithm => 'f',
        which-pgcd-algorithm => '×',
    );
    my Pair $P = $fraction.calculate-fractions('+');
    say();
    $fraction.numerator1 = 1;
    $fraction.denominator1 = 1;
    $fraction.numerator2 = $P.key;
    $fraction.denominator2 = $P.value;
    $P = $fraction.calculate-fractions('−');
    say "Il reste au cultivateur {$P.key}/{$P.value} de la surface de son champ à planter.";
}

exercise_04();
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

