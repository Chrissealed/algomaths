#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe01d, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 5,
        denominator1 => 8,
        numerator2 => 3,
        denominator2 => 11,
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
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

