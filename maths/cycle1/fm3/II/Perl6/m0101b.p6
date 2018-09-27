#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe01b, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 2,
        denominator1 => 21,
        #reduce-fraction1 => False,
        nominator2 => 5,
        denominator2 => 21,
        #reduce-fraction2 => False,
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('subtract');
}

exercise_01b();
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

