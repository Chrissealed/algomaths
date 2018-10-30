#!/usr/bin/env perl6

use v6;
use corrective;
use method02 :methodwording, :exe-a, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 7,
        denominator1 => 1,
        numerator2 => 3,
        denominator2 => 4,
        which-ppcm-algorithm => 'by-use-of-pgcd', # b.u.o.p.,
        which-irreducible-fraction => '×', # factorization,
        which-pgcd-algorithm => '×', # factorization,
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

