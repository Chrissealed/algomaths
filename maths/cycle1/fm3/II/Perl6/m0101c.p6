#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe01c, :examples;
use operations-on-fractions;

sub answering {
    say "On doit calculer 4/5 – 7/25;";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 4,
        denominator1 => 5,
        nominator2 => 7,
        denominator2 => 25,
        which-ppcm-algorithm => 'by-prime-factors', # '2',
        which-irreducible-fraction-algorithm => 'factorization-algorithm', # '3',
    );
    my Pair $P;
    $P = $fraction.add-up-or-subtract-fractions('subtract');
}

exercise_01c();
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

