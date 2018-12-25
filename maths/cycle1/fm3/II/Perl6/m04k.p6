#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe-k, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m04k.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions −35/44 et −22/15 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -35 => 44,
        nudepair2 => -22 => 15,
        #reduce-last-one => False,
        which-irreducible-fraction-algorithm => '÷',
        which-pgcd-algorithm => ':',
    );
    my Pair $P = $fraction.calculate-fractions('*');

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

