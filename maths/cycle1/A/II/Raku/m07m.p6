#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe-m, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m07m.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions −6/7 et 3/1 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -6 => 7,
        nudepair2 => 3 => 1,
        breakdown-numerator1 => True,
        breakdown-denominators => False,
        compute-prime-factors => True,
        reduce-last-one => False,
        #which-irreducible-fraction-algorithm => 'f',
        #which-pgcd-algorithm => 'f',
    );
    my Pair $P = $fraction.calculate-fractions('d');

    $t.closefile = True;
    $t.tprint: "\n";
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

