#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe01d, :examples;
use operations-on-fractions;

sub answering {
    say "On doit calculer 5/8 – 3/11;";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 5,
        denominator1 => 8,
        nominator2 => 3,
        denominator2 => 11,
        which-irreducible-fraction-algorithm => 'factorization', # '3',
        which-pgcd-algorithm => 'factorization', # '*' ou '3',
    );
    my Pair $P;
    $P = $fraction.add-up-or-subtract-fractions('subtract');
}

exercise_01d();
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

