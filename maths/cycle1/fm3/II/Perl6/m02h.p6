#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-h, :examples;
use operations-on-fractions;

sub answering {
    say "30,125 exprimé sous forme de fraction = 30125/1000.";
    my $fraction = OperationsOnFractions.new(
        numerator1 => 30125,
        denominator1 => 1000,
        reduce-fraction1 => True,
        numerator2 => 3,
        denominator2 => 8,
        reduce-fraction2 => False,
        which-ppcm-algorithm => 'b.l.n.m.', # by-larger-number-multiples,
        which-irreducible-fraction-algorithm => ':', # euclide,
        which-pgcd-algorithm => '÷', # euclide,
    );
    my Pair $P = $fraction.calculate-fractions('-');
}

exercise_h();
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

