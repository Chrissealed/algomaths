#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe06c, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 15,
        denominator1 => 25,
        reduce-fraction1 => True,
        numerator2 => 12,
        denominator2 => 16,
        reduce-fraction2 => True,
        numerator3 => 7,
        denominator3 => 20,
        reduce-fraction3 => True,
    );
    my Pair $P = $fraction.calculate-fractions('−+');
}

exercise_06c();
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

