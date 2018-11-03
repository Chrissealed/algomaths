#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-p, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 2,
        denominator1 => 3,
        #breakdown-factors1 => True,
        numerator2 => 2,
        denominator2 => 3,
        #breakdown-factors2 => True,
        numerator3 => 2,
        denominator3 => 3,
        #breakdown-factors3 => True,
        breakdown'factors => False,
        reduce-last-one => True,
        which-irreducible-fraction-algorithm => '−',
        which-pgcd-algorithm => '#',
    );
    my Pair $P = $fraction.calculate-fractions('×');
}

exercise_p();
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

