#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe-f, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 7,
        denominator1 => 4,
        numerator2 => 4,
        denominator2 => -7,
        which-irreducible-fraction-algorithm => 'subtraction',
        which-pgcd-algorithm => 's',
    );
    my Pair $P = $fraction.calculate-fractions('*');
}

exercise_f();
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

