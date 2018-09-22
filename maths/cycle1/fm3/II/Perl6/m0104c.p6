#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe04c, :examples;
use operations-on-fractions;

sub answering {
    say "On doit calculer 7/12 − 11/16;";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 7,
        denominator1 => 12,
        nominator2 => 11,
        denominator2 => 16,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'divisors-listing',
    );
    my Pair $P;
    $P = $fraction.add-up-or-subtract-fractions('-');
}

exercise_04c();
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

