#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-a, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        nominator1 => 7,
        denominator1 => 1,
        reduce-fraction1 => False,
        nominator2 => 3,
        denominator2 => 4,
        reduce-fraction2 => False,
        which-ppcm-algorithm => '1',
        which-irreducible-fraction => '3',
        which-pgcd-algorithm => '3',
    );
    my Pair $P = $fraction.calculate-fractions('+');
}

exercise_a();
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

