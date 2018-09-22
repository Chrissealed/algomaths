#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe06b, :examples;
use irreducible-fraction;
use operations-on-fractions;

sub answering {
    say "On pense à simplifier l'un des termes ou les deux,";
    say "cela simplifie le calcul; ici on réduit 15/30 puis 3/12.";
    my $irreducible = IrreducibleFraction.new(
        numerator => 15,
        denominator => 30,
    );
    my Pair $P1 = $irreducible.reduce-fraction-with-factorization-algorithm();
    $irreducible = IrreducibleFraction.new(
        numerator => 3,
        denominator => 12,
    );
    my Pair $P2 = $irreducible.reduce-fraction-with-factorization-algorithm();
    my $fraction = OperationsOnFractions.new(
        nominator1 => $P1.key,
        denominator1 => $P1.value,
        nominator2 => $P2.key,
        denominator2 => $P2.value,
    );
    my Pair $P = $fraction.add-up-or-subtract-fractions('-');
}

exercise_06b();
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

