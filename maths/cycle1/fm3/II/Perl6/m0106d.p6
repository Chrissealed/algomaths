#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe06d, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 21,
        denominator1 => 2121,
        numerator2 => 55,
        denominator2 => 44,
    );
    my Pair $P = $fraction.calculate-fractions('subtract');
}

exercise_06d();
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

