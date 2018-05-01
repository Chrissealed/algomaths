#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe01c;
use irreducible-fraction;

sub answering {
    my $irreducible = IrreducibleFraction.new(
        numerator => 2652,
        denominator => 1547,
    );
    my Bool $is-irreducible = $irreducible.reduce-fraction-with-euclide-algorithm();
}

exercise_01c();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

