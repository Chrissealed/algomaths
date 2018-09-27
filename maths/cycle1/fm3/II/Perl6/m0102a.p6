#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe02a, :examples;
use operations-on-fractions;

sub answering {
    say "Les fractions 13/15 et 6/5 sont irréductibles.";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 13,
        denominator1 => 15,
        reduce-fraction1 => False,
        nominator2 => 6,
        denominator2 => 5,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'by-prime-factors', # '2',
        which-irreducible-fraction-algorithm => 'factorization', # '3',
        which-pgcd-algorithm => 'factorization', # '*' ou '3',
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

