#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe05a, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 1,
        denominator1 => 2,
        nominator2 => 2,
        denominator2 => 3,
        which-ppcm-algorithm => 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'euclide',
        which-pgcd-algorithm => 'euclide',
    );
    my Pair $P;
    $P = $fraction.add-up-or-subtract-fractions('+');
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 3;
    $fraction.denominator2 = 4;
    $P = $fraction.add-up-or-subtract-fractions('add-up');

    $P = $fraction.add-up-or-subtract-fractions('+');
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 5;
    $fraction.denominator2 = 6;
    $P = $fraction.add-up-or-subtract-fractions('add-up');
    
    $P = $fraction.add-up-or-subtract-fractions('+');
    $fraction.nominator1 = $P.key;
    $fraction.denominator1 = $P.value;
    $fraction.nominator2 = 4;
    $fraction.denominator2 = 5;
    $P = $fraction.add-up-or-subtract-fractions('add-up');
}

exercise_05a();
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

