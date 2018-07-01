#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe03, :examples;
use irreducible-fraction;

sub answering {
    my $irreducible = IrreducibleFraction.new(
        numerator => 782,
        denominator => 690,
    );
    my Pair $pair1 = $irreducible.reduce-fraction-with-euclide-algorithm();
    say();
    $irreducible = IrreducibleFraction.new(
        numerator => 272,
        denominator => 510,
    );
    my Pair $pair2 = $irreducible.reduce-fraction-with-euclide-algorithm();
    say();
    say 'F = 782/690 + 272/510, or 782/690 = ', $pair1.key, '/', $pair1.value;
    say 'et 272/510 = ', $pair2.key, '/', $pair2.value;
    say 'donc F = ', $pair1.key, ' + ', $pair2.key, ' / ', $pair1.value;
    say();
    $irreducible = IrreducibleFraction.new(
        numerator => $pair1.key + $pair2.key,
        denominator => $pair1.value,
    );
    my Pair $pair = $irreducible.reduce-fraction-with-factorization-algorithm();
}

exercise_03();
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

