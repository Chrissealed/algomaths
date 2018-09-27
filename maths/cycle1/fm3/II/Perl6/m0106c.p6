#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe06c, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 15,
        denominator1 => 25,
        nominator2 => 12,
        denominator2 => 16,
    );
    my Pair $P = $fraction.calculate-fractions('-');
    say();
    $fraction = OperationsOnFractions.new(
        nominator1 => $P.key,
        denominator1 => $P.value,
        # La fraction étant déjà réduite, j'ajoute ce champ
        reduce-fraction1 => False,
        nominator2 => 7,
        denominator2 => 20,
    );
    $P = $fraction.calculate-fractions('+');
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

