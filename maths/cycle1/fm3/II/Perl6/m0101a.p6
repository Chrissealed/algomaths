#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe01a, :examples;
use operations-on-fractions;

sub answering {
    say "On doit calculer 9/5 + 4/5;";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 9,
        denominator1 => 5,
        nominator2 => 4,
        denominator2 => 5,
        which-ppcm-algorithm => 'by-prime-factors', # '2',
        which-irreducible-fraction-algorithm => 'factorization', # '3',
        which-pgcd-algorithm => 'factorization', # '*' ou '3',
    );
    my Pair $P;
    $P = $fraction.add-up-or-subtract-fractions('add-up');
}

exercise_01a();
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

