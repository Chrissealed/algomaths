#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe06a, :examples;
use irreducible-fraction;
use operations-on-fractions;

sub answering {
    say "On pense à simplifier l'un des termes ou les deux,";
    say "cela simplifie le calcul; ici on réduit 4/12.";
    my $irreducible = IrreducibleFraction.new(
        numerator => 4,
        denominator => 12,
    );
    my Pair $P = $irreducible.reduce-fraction-with-euclide-algorithm();
    my $fraction = OperationsOnFractions.new(
        nominator1 => 5,
        denominator1 => 18,
        nominator2 => $P.key,
        denominator2 => $P.value,
    );
    $P = $fraction.add-up-or-subtract-fractions('-');
}

exercise_06a();
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

