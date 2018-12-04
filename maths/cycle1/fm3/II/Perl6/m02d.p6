#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-d, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02d.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "Les fractions −5/3 et 6/1 sont irréductibles.";
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -5 => 3,
        nudepair2 => 6 => 1,
        which-ppcm-algorithm => 'b.l.n.m.', # by-larger-number-multiples,
        which-irreducible-fraction-algorithm => '×', # factorization,
        which-pgcd-algorithm => '*', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('subtract');

    $t.closefile = True;
    $t.tput: '';
}

exercise_d();
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

