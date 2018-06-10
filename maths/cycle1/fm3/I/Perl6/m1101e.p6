#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe01e, :examples;
use irreducible-fraction;

sub answering {
    my $irreducible = IrreducibleFraction.new(
        numerator => 644,
        denominator => 294,
    );
    my Bool $is-irreducible = $irreducible.reduce-fraction-with-subtraction-algorithm();
}

exercise_01e();
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

