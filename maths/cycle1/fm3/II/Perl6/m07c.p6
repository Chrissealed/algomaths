#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe-c, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m07c.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 13/3 et 2/1 sont irréductibles.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 13 => 3,
        nudepair2 => 2 => 1,
        breakdown-numerators => False,
        breakdown-denominators => False,
        compute-prime-factors => False,
        reduce-last-one => False,
    );
    my Pair $P = $fraction.calculate-fractions('×');

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_c();
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

