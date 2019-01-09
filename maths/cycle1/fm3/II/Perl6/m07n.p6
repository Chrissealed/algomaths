#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe-n, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m07n.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions (−21)/1 et 1/(−18) sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -21 => 1,
        nudepair2 => 1 => -18,
        breakdown-numerator1 => True,
        breakdown-denominator2 => True,
        compute-prime-factors => True,
        reduce-last-one => False,
        #which-irreducible-fraction-algorithm => 'f',
        #which-pgcd-algorithm => 'f',
    );
    my Pair $P = $fraction.calculate-fractions('m');

    $t.closefile = True;
    $t.tprint: "\n";
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

