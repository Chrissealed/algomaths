#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe01a, :examples;
use irreducible-fraction;

sub answering {
    my $irreducible = IrreducibleFraction.new(
        numerator => 493,
        denominator => 204,
    );
    my Bool $is-irreducible = $irreducible.reduce-fraction-with-euclide-algorithm();
}

exercise_01a();
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

