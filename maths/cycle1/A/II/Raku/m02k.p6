#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-k, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02k.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Le nombre 3 est équivalent à la fraction 3/1.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 3 => 1,
        nudepair2 => 4 => 27,
        nudepair3 => 4 => 9,
        which-ppcm-algorithm => 'by-f', # by-prime-factors,
        which-irreducible-fraction-algorithm => 'f', # factorization,
        which-pgcd-algorithm => '×', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('add-upx2');
    $t.tprint: "\n";
    $fraction.nudepair1 = $P.key => $P.value;
    $fraction.nudepair2 = 1 => 3;
    $fraction.nudepair3 = Nil;
    $fraction.which-pgcd-algorithm = 'e'; # euclide;
    $P = $fraction.calculate-fractions('−');
    $t.tprint: "\n";
    $t.tput: 'Equivalent de ces calculs en une seule passe :';
    $t.tput: '3 + 4/9 − 1/3 + 4/27 = 81/27 + 12/27 − 9/27 + 4/27 = 88/27.';

    $t.closefile = True;
    $t.tput: '';
}

exercise_k();
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

