#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe01c, :examples;
use irreducible-fraction;

sub answering {
    my $irreducible = IrreducibleFraction.new(
        numerator => 2652,
        denominator => 1547,
    );
    $irreducible.reduce-fraction-with-euclide-algorithm();
}

exercise_01c();
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

