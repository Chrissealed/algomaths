#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe06d, :examples;
use irreducible-fraction;
use operations-on-fractions;

sub answering {
    say "On pense à simplifier les termes quand c'est possible,";
    say "cela simplifie le calcul; ici on réduit 21/2121 puis 55/44.";
    my $irreducible = IrreducibleFraction.new(
        numerator => 21,
        denominator => 2121,
    );
    my Pair $P1 = $irreducible.reduce-fraction-with-euclide-algorithm();
    say();
    $irreducible = IrreducibleFraction.new(
        numerator => 55,
        denominator => 44,
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
}

exercise_06d();
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

