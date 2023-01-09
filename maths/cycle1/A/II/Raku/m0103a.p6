#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe03a, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0103a.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 19 => 46,
        reduce-fraction1 => True,
        nudepair2 => 17 => 69,
        reduce-fraction2 => True,
        which-ppcm-algorithm => 'by-use-of-pgcd',
        which-irreducible-fraction-algorithm => 'euclide',
    );
    my Pair $P;
    $P = $fraction.calculate-fractions('−');

    $t.closefile = True;
    $t.tput: '';
}

exercise_03a();
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

