#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe02, :examples;
use irreducible-fraction;

sub answering {
    my $irreducible = IrreducibleFraction.new(
        numerator => 25 * 10**2 * 121,
        denominator => 11 * 1250 * 3,
    );
    say 'A = 25 × 10² × 121 / 11 × 250 × 3';
    say 'A = 25 × 10 × 5 × 2 × 11 × 11 / 11 × 25 × 5 × 10 × 3';
    say 'A = 2 × 11 / 3 = 22/3 et PGCD(22 ; 3) = 1.';
    say 'A = 22/3 et la fraction 22/3 est irréductible.';
    say();
    say 'En faisant le calcul brut de la fraction et en décomposant en facteurs premiers on a :';
    $irreducible.reduce-fraction-with-factorization-algorithm();
}

exercise_02();
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

