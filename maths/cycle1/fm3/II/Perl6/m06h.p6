#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe-h, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m06h.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 1/5 et (− 11/15) sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 1 => 5,
        nudepair2 => -11 => 15,
        breakdown-numerators => False,
        breakdown-denominators => False,
        compute-prime-factors => False,
        which-irreducible-fraction-algorithm => 'factorization',
    );
    my Pair $P = $fraction.calculate-fractions(':');

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_h();
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

