#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-o, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 1,
        denominator1 => 10,
        #breakdown-factors1 => True,
        numerator2 => 1,
        denominator2 => 20,
        #breakdown-factors2 => True,
        numerator3 => 1,
        denominator3 => 30,
        #breakdown-factors3 => True,
        breakdown'factors => True,
        reduce-last-one => False,
        which-irreducible-fraction-algorithm => '−',
        which-pgcd-algorithm => '#',
    );
    my Pair $P = $fraction.calculate-fractions('×');
}

exercise_o();
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

