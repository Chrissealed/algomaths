#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe06, :examples;
use irreducible-fraction;

sub answering {
    say "a. Le numérateur et le dénominateur de A ne sont pas des nombres entiers";
    say "   donc on ne peut pas déterminer leur PGCD.";
    say();
    say "b. A = 43,01/84,15 ; A = 43,01×100/84,15×100; A = 4301/8415.";
    say();
    say 'c.d.';
    my $irreducible = IrreducibleFraction.new(
        numerator => 4301,
        denominator => 8415,
    );
    my Pair $pair = $irreducible.reduce-fraction-with-euclide-algorithm();
}

exercise_06();
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

