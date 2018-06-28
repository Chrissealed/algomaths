#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe04b, :examples;
use irreducible-fraction;

sub answering {
    my $irreducible = IrreducibleFraction.new(
        numerator => 295,
        denominator => 567,
    );
    my Pair $pair = $irreducible.reduce-fraction-with-euclide-algorithm();
}

exercise_04b();
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

