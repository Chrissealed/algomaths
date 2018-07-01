#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe04d, :examples;
use irreducible-fraction;

sub answering {
    my $irreducible = IrreducibleFraction.new(
        numerator => 23,
        denominator => 92,
    );
    my Pair $pair = $irreducible.reduce-fraction-with-factorization-algorithm();
}

exercise_04d();
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

