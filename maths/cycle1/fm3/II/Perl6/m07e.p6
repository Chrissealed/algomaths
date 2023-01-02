#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe-e, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m07e.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 12/35 et 18/1 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 12 => 35,
        nudepair2 => 18 => 1,
        breakdown-numerator1 => True,
        breakdown-denominators => True,
        compute-prime-factors => True,
        reduce-last-one => False,
    );
    my Pair $P = $fraction.calculate-fractions('÷');

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_e();
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

