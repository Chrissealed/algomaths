#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe01b, :examples;
use irreducible-fraction;

sub answering {
    my $irreducible = IrreducibleFraction.new(
        numerator => 25,
        denominator => 45,
    );
    $irreducible.reduce-fraction-with-factorization-algorithm();
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

