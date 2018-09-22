#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe03a, :examples;
use operations-on-fractions;

sub answering {
    say "On doit calculer 19/46 − 17/69;";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 19,
        denominator1 => 46,
        nominator2 => 17,
        denominator2 => 69,
        which-ppcm-algorithm => 'by-use-of-pgcd', # '3',
        which-irreducible-fraction-algorithm => 'euclide', # '1',
        which-pgcd-algorithm => 'euclide', # ':' ou '1',
    );
    my Pair $P;
    $P = $fraction.add-up-or-subtract-fractions('-');
}

exercise_03a();
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

