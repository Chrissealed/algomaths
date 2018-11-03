#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-h, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 5,
        denominator1 => 7,
        #breakdown-factors1 => False,
        numerator2 => 2,
        denominator2 => -13,
        #breakdown-factors2 => False,
        numerator3 => 7,
        denominator3 => -3,
        #breakdown-factors3 => False,
        # Réduire les trois fractions d'un coup,
        # équivalent aux trois attributs 'breakdown-factorsn'.
        breakdown'factors => False,
        which-irreducible-fraction-algorithm => 'f',
        which-pgcd-algorithm => 'f',
    );
    my Pair $P = $fraction.calculate-fractions('*');
}

exercise_h();
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

