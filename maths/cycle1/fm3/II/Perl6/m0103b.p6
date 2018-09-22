#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe03b, :examples;
use operations-on-fractions;

sub answering {
    say "On doit calculer 4/3 + 5/7 − 3/21;";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 4,
        denominator1 => 3,
        nominator2 => 5,
        denominator2 => 7,
        which-ppcm-algorithm => 'by-prime-factors', # '2',
        which-irreducible-fraction-algorithm => 'euclide', # '1',
        which-pgcd-algorithm => 'euclide', # ':' ou '1',
    );
    my Pair $P;
    $P = $fraction.add-up-or-subtract-fractions('add-up');
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 3;
    $fraction.denominator2 = 21;
    $P = $fraction.add-up-or-subtract-fractions('subtract');
}

exercise_03b();
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

