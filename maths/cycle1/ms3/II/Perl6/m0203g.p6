#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :examples;
use method03 :methodwording, :exe01g, :examples;
use irreducible-fraction;

sub answering {
    my $irreducible = IrreducibleFraction.new(
        numerator => 406,
        denominator => 696,
    );
    $irreducible.reduce-fraction-with-euclide-algorithm();
}

exercise_01g();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method02();
    put-up-method03();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples02;
    show-examples03;
}
do-put-up-correct-version();
answering();

