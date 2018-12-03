#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe01d, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0101d.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 5/8 et 3/11 sont irréductibles.';

    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 5 => 8,
        nudepair2 => 3 => 11,
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => 'factorization',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('subtract');

    $t.closefile = True;
    $t.tput: '';
}

exercise_01d();
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

