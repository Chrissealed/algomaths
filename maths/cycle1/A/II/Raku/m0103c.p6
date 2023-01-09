#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe03c, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0103c.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions -5/22 et 7/6 sont irréductibles';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -5 => 22,
        nudepair2 => 7 => 6,
        which-ppcm-algorithm => 'b.l.n.m.', # 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => '−', # 'subtraction',
        which-pgcd-algorithm => '÷', # 'euclide',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('+');

    $t.closefile = True;
    $t.tput: '';
}

exercise_03c();
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

