#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-n, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02n.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Le nombre 1 est équivalent à la fraction 1/1.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 1 => 1,
        nudepair2 => 5 => 21,
        nudepair3 => 5 => 14,
        which-ppcm-algorithm => 'by-f', # 'by-prime-factors',
        which-irreducible-fraction-algorithm => 'factorization',
        which-pgcd-algorithm => '*' # 'factorization',
    );
    my Pair $P = $fraction.calculate-fractions('--');

    $t.closefile = True;
    $t.tput: '';
}

exercise_n();
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

