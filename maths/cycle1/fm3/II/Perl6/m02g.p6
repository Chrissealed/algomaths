#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-g, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02g.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "0,5 exprimé sous forme de fraction = 1/2.";

    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 1 => 2,
        nudepair2 => 5 => 6,
        which-ppcm-algorithm => 'b.l.n.m.', # by-larger-number-multiples,
        which-irreducible-fraction-algorithm => '×', # factorization,
        which-pgcd-algorithm => '#', # divisors-listing,
    );
    my Pair $P = $fraction.calculate-fractions('−');

    $t.closefile = True;
    $t.tput: '';
}

exercise_g();
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

