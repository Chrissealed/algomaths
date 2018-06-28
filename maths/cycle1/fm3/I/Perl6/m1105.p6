#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe05, :examples;
use irreducible-fraction;

sub answering {
    say "a. 648 et 972 sont des nommbres pairs donc des nombres divisibles par 2";
    say "donc leur PGCD n'est pas égal à 1 donc 648 et 972 ne sont pas premiers entre eux.";
    say();
    say 'b.';
    my $irreducible = IrreducibleFraction.new(
        numerator => 648,
        denominator => 972,
    );
    my Pair $pair = $irreducible.reduce-fraction-with-euclide-algorithm();
    say();
    say 'c.';
    say "√648 + √972 = √324×2 + √324×3";
    say "√648 + √972 = √324 × √2 + √324 × √3 (chapitre 4 méthode 7)";
    say "√648 + √972 = √324(√2 × √3) or √324 = 18";
    say "on a donc bien √648 + √972 = 18(√2 + √3).";
}

exercise_05();
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

