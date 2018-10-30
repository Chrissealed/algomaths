#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe01c, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 4,
        denominator1 => 5,
        numerator2 => 7,
        denominator2 => 25,
        which-ppcm-algorithm => 'by-prime-factors', # 'b.p.f.' ou 'bf',
        which-irreducible-fraction-algorithm => 'factorization', # 'f' ou '*' ou '×',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('subtract');
}

exercise_01c();
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

