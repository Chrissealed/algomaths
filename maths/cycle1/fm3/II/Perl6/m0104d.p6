#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe04d, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 1,
        denominator1 => 2,
        numerator2 => 1,
        denominator2 => 3,
        numerator3 => 1,
        denominator3 => 4,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'subtraction',
        which-pgcd-algorithm => 'divisors-listing',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('subtract-add-up');
    say();
    say "Pour faire les calculs en une passe, on peut écrire :";
    say "1/2 − 1/3 + 1/4 = 6/12 − 4/12 + 3/12 = 6−4+3/12 = 5/12.";
}

exercise_04d();
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

