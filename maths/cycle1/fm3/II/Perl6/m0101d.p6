#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe01d, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 5,
        denominator1 => 8,
        reduce-fraction1 => False,
        nominator2 => 3,
        denominator2 => 11,
        reduce-fraction2 => False,
        which-irreducible-fraction-algorithm => 'factorization', # '3',
        which-pgcd-algorithm => 'factorization', # '*' ou '3',
    );
    my Pair $P;
    say "Les fractions 5/8 et 3/11 sont irréductibles.";
    $P = $fraction.calculate-fractions('subtract');
}

exercise_01d();
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

