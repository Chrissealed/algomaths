#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe03d, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => -7,
        denominator1 => 20,
        numerator2 => 11,
        denominator2 => 15,
        which-ppcm-algorithm => 'b.l.n.m.', # 'by-larger-number-multiple',
        which-irreducible-fraction-algorithm => '×', # 'factorization',
        which-pgcd-algorithm => ':', # 'euclide',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('-');
}

exercise_03d();
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

