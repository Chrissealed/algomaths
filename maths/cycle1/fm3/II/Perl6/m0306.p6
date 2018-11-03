#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe06, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 4,
        denominator1 => 15,
        numerator2 => 1,
        denominator2 => 3,
        # On ne réduit pas la fraction intermédiaire
        reduce-last-one => False,
        which-ppcm-algorithm => 'b.l.n.m.',
        which-irreducible-fraction-algorithm => 'e',
        which-pgcd-algorithm => 'e',
    );
    my Pair $P = $fraction.calculate-fractions('+');
    say();
    $fraction.numerator1 = 1;
    $fraction.denominator1 = 1;
    $fraction.numerator2 = $P.key;
    $fraction.denominator2 = $P.value;
    # On réduit la dernière fraction
    $fraction.reduce-last-one = True;
    $P = $fraction.calculate-fractions('subtract');

    say "Il reste {$P.key}/{$P.value} du gâteau.";
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

