#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe-c, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m02c.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "Les fractions 7/9 et 2/1 sont irréductibles.";
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 7 => 9,
        nudepair2 => 2 => 1,
        which-ppcm-algorithm => 'by-larger-number-multiples',
        which-irreducible-fraction-algorithm => '*', # factorization,
        which-pgcd-algorithm => '*', # factorization,
    );
    my Pair $P = $fraction.calculate-fractions('subtract');

    $t.closefile = True;
    $t.tput: '';
}

exercise_c();
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

