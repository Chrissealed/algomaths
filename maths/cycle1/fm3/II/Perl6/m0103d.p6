#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe03d, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0103d.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions − 7/20 et 11/15 sont irréductibles.';

    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -7 => 20,
        nudepair2 => 11 => 15,
        which-ppcm-algorithm => 'b.l.n.m.', # 'by-larger-number-multiple',
        which-irreducible-fraction-algorithm => '×', # 'factorization',
        which-pgcd-algorithm => ':', # 'euclide',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('-');

    $t.closefile = True;
    $t.tput: '';
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

