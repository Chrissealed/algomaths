#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe04a, :examples;
use operations-on-fractions;

sub answering {
    say "On doit calculer −5/6 − 5/3;";
    my $fraction = OperationsOnFractions.new(
        nominator1 => -5,
        denominator1 => 6,
        nominator2 => 5,
        denominator2 => 3,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'divisors-listing',
    );
    my Pair $P;
    $P = $fraction.add-up-or-subtract-fractions('-');
}

exercise_04a();
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

