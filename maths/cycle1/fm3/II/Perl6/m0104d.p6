#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe04d, :examples;
use operations-on-fractions;

sub answering {
    say "On doit calculer 1/2 − 1/3 + 1/4;";
    my $fraction = OperationsOnFractions.new(
        nominator1 => 1,
        denominator1 => 2,
        nominator2 => 1,
        denominator2 => 3,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'subtraction',
        which-pgcd-algorithm => 'divisors-listing',
    );
    my Pair $P;
    $P = $fraction.add-up-or-subtract-fractions('subtract');
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 1;
    $fraction.denominator2 = 4;
    $P = $fraction.add-up-or-subtract-fractions('add-up');
    say();
    say "Pour faire les calculs en une passe, on peut écrire :";
    say "1/2 − 1/3 + 1/4 = 6/12 − 4/12 + 3/12 = 6−4+3/12 = 5/12.
}

exercise_04d();
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

