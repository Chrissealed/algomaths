#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-d, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 3,
        denominator1 => 7,
        numerator2 => 5,
        denominator2 => 11,
        numerator3 => 7,
        denominator3 => 2,
        breakdown'factors => False,
        compute'prime'factors => True, # Valeur par défaut
        which-irreducible-fraction-algorithm => '×',
        which-pgcd-algorithm => '÷',
    );
    my Pair $P = $fraction.calculate-fractions('multiply');
}

exercise_d();
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

