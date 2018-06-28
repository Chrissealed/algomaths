#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe04a, :examples;
use irreducible-fraction;

sub answering {
    my $irreducible = IrreducibleFraction.new(
        numerator => 315,
        denominator => 147,
    );
    my Pair $pair = $irreducible.reduce-fraction-with-factorization-algorithm();
}

exercise_04a();
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

