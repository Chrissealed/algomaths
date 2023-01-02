#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-j, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02j.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Le nombre 10 est équivalent à la fraction 10/1.';

    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 10 => 1,
        nudepair2 => 5 => 15,
        reduce-fraction2 => True,
        nudepair3 => 3 => 10,
        which-ppcm-algorithm => 'bf', # by-prime-factors,
        which-irreducible-fraction-algorithm => 'f', # factorization,
        which-pgcd-algorithm => 'f', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('+−');

    $t.closefile = True;
    $t.tput: '';
}

exercise_j();
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

