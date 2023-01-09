#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-l, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02l.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 4 => 11,
        nudepair2 => 3 => 7,
        nudepair3 => 2 => 1,
        which-ppcm-algorithm => 'bf', # by-prime-factors,
        which-irreducible-fraction-algorithm => '×', # factorization,
        which-pgcd-algorithm => 'f', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('subtractx2');
    $t.tprint: "\n";
    $t.tput: 'Equivalent de ces calculs en une seule passe :';
    $t.tput: '4/11 − 3/7 − 2 = 28/77 − 33/77 − 154/77 = −159/77.';

    $t.closefile = True;
    $t.tput: '';
}

exercise_l();
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

