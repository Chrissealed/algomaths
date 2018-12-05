#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe-e, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m04e.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'La fraction 1/3 est irréductible.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 1 => 3,
        nudepair2 => 1 => 3,
        breakdown'factors => False,
        compute'prime'factors => False,
        which-irreducible-fraction-algorithm => '*',
        which-pgcd-algorithm => '*',
    );
    my Pair $P = $fraction.calculate-fractions('*');

    $t.closefile = True;
    $t.tput: '';
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

