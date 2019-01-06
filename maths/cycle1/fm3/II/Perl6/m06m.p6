#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe-m, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m06m.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions (− 10/7) et/ou (− 7/10) sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -10 => 7,
        nudepair2 => -7 => 10,
        breakdown-numerators => True,
        breakdown-denominators => False,
        compute-prime-factors => True,
        which-irreducible-fraction-algorithm => '÷',
    );
    my Pair $P = $fraction.calculate-fractions('divide');

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

