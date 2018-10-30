#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe02b, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 5,
        denominator1 => 6,
        numerator2 => 6,
        denominator2 => 5,
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('subtract');
}

exercise_02b();
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

