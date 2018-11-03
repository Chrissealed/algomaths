#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe02a, :examples;
use operations-on-fractions;

sub answering {
    say "Les fractions 13/15 et 6/5 sont irréductibles.";
    my $fraction = OperationsOnFractions.new(
        numerator1 => 13,
        denominator1 => 15,
        numerator2 => 6,
        denominator2 => 5,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('subtract');
}

exercise_02a();
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

