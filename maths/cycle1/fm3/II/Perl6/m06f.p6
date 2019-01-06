#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe-f, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m06f.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 10/(−13) et (−10)/13 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 10 => -13,
        nudepair2 => -10 => 13,
        breakdown-numerator1 => True,
        breakdown-numerator2 => True,
        #compute-prime-factors => True,
        #which-irreducible-fraction-algorithm => 'euclide',
    );
    my Pair $P = $fraction.calculate-fractions(':');

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_f();
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

