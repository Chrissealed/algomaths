#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe-k, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m06k.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions (− 51/77) et (− 12/49) sont-elles irréductibles?';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => -51 => 77,
        nudepair2 => -12 => 49,
        reduce-fraction1 => True,
        reduce-fraction2 => True,
        breakdown-numerators => True,
        breakdown-denominators => True,
        compute-prime-factors => True,
        which-irreducible-fraction-algorithm => '÷',
    );
    my Pair $P = $fraction.calculate-fractions('d');

    $t.closefile = True;
    $t.tprint: "\n";
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

