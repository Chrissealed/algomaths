#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe06c, :examples;
use irreducible-fraction;
use operations-on-fractions;

sub answering {
    say "On pense à simplifier les termes quand c'est possible,";
    say "cela simplifie le calcul; ici on réduit 15/25 puis 12/16.";
    my $irreducible = IrreducibleFraction.new(
        numerator => 15,
        denominator => 25,
    );
    my Pair $P1 = $irreducible.reduce-fraction-with-factorization-algorithm();
    say();
    $irreducible = IrreducibleFraction.new(
        numerator => 12,
        denominator => 16,
    );
    my Pair $P2 = $irreducible.reduce-fraction-with-factorization-algorithm();
    say();
    my $fraction = OperationsOnFractions.new(
        nominator1 => $P1.key,
        denominator1 => $P1.value,
        nominator2 => $P2.key,
        denominator2 => $P2.value,
    );
    my Pair $P = $fraction.add-up-or-subtract-fractions('-');
    say();
    $fraction = OperationsOnFractions.new(
        nominator1 => $P.key,
        denominator1 => $P.value,
        nominator2 => 7,
        denominator2 => 20,
    );
    $P = $fraction.add-up-or-subtract-fractions('+');
}

exercise_06c();
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

