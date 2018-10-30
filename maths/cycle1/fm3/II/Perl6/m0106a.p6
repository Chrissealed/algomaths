#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe06a, :examples;
use operations-on-fractions;

sub answering {
    my $fraction = OperationsOnFractions.new(
        numerator1 => 5,
        denominator1 => 18,
        reduce-fraction1 => False, # Valeur par défaut
        numerator2 => 4,
        denominator2 => 12,
        reduce-fraction2 => True,
        which-ppcm-algorithm => 'b.u.o.p.', # by-use-of-pgcd,
        which-irreducible-fraction-algorithm => ':', # euclide,
        which-pgcd-algorithm => ':', # euclide,
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('−');
}

exercise_06a();
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

