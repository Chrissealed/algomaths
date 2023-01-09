#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-m, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02m.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 5/1 et 1/5 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 5 => 1,
        nudepair2 => 1 => 5,
        which-ppcm-algorithm => 'b.p.f.', # by-prime-factors,
        which-irreducible-fraction-algorithm => '*', # factorization,
        which-pgcd-algorithm => '×', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('−');

    $t.closefile = True;
    $t.tput: '';
}

exercise_m();
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

