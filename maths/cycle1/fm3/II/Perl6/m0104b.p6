#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe04b, :examples;
use operations-on-fractions;

sub answering {
    say "On doit calculer −6/11 + −6/−11;";
    my $fraction = OperationsOnFractions.new(
        nominator1 => -6,
        denominator1 => 11,
        nominator2 => -6,
        denominator2 => -11,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'divisors-listing',
    );
    my Pair $P;
    $P = $fraction.add-up-or-subtract-fractions('+');
}

exercise_04b();
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

