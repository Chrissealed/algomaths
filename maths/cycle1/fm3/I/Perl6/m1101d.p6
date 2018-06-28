#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe01d, :examples;
use irreducible-fraction;

sub answering {
    my $irreducible = IrreducibleFraction.new(
        numerator => 231,
        denominator => 132,
    );
    $irreducible.reduce-fraction-with-factorization-algorithm();
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

