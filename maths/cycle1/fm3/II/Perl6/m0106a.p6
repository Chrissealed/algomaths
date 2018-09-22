#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe06a, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 5,
        denominator1 => 18,
        nominator2 => 4,
        denominator2 => 12,
        which-ppcm-algorithm => 'by-use-of-pgcd',
        which-irreducible-fraction-algorithm => 'euclide',
        which-pgcd-algorithm => 'euclide',
    );
    my Pair $P;
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

