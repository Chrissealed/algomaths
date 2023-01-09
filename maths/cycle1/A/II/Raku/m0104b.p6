#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe04b, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0104b.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions −6/11 et −6/−11 sont irréductibles.';

    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -6 => 11,
        nudepair2 => -6 => -11,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'divisors-listing',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('+');

    $t.closefile = True;
    $t.tput: '';
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

