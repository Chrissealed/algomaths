#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe02d, :examples;
use operations-on-fractions;

sub answering {
    say "On doit calculer 5/6 − 3/4;";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 5,
        denominator1 => 6,
        nominator2 => 3,
        denominator2 => 4,
        which-ppcm-algorithm => 'by-larger-number-multiples', # '1',
        which-irreducible-fraction-algorithm => 'subtraction', # '2',
        which-pgcd-algorithm => 'subtraction', # '-' ou '2',
    );
    my Pair $P;
    $P = $fraction.add-up-or-subtract-fractions('-');
}

exercise_02d();
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

