#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe-i, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m07i.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions (−44) et 5/(−11) sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -44 => 1,
        nudepair2 => 5 => -11,
        breakdown-numerator1 => True,
        breakdown-denominator2 => True,
        compute-prime-factors => True,
        reduce-last-one => False,
        #which-irreducible-fraction-algorithm => '−',
        #which-pgcd-algorithm => '−',
    );
    my Pair $P = $fraction.calculate-fractions('m');

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_i();
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

