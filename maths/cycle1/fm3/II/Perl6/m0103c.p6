#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe03c, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => -5,
        denominator1 => 22,
        numerator2 => 7,
        denominator2 => 6,
        which-ppcm-algorithm => 'b.l.n.m.', # 'by-larger-number-multiple',
        which-irreducible-fraction-algorithm => '−', # 'subtraction',
        which-pgcd-algorithm => '÷', # 'euclide',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('+');
}

exercise_03c();
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

