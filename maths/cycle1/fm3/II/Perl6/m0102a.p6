#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe02a, :examples;
use operations-on-fractions;

sub answering {
    say "On doit calculer 13/15 − 6/5;";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 13,
        denominator1 => 15,
        nominator2 => 6,
        denominator2 => 5,
        which-ppcm-algorithm => 'by-prime-factors', # '2',
        which-irreducible-fraction-algorithm => 'factorization', # '3',
        which-pgcd-algorithm => 'factorization', # '*' ou '3',
    );
    my Pair $P;
    $P = $fraction.add-up-or-subtract-fractions('subtract');
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

