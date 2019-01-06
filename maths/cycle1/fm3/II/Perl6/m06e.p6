#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe-e, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m06e.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'La fraction 3/5 est irréductible.';
    
    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 27 => 55,
        nudepair2 => 3 => 5,
        reduce-fraction1 => True,
        breakdown-numerator1 => True,
        breakdown-numerator2 => True,
    );
    my Pair $P = $fraction.calculate-fractions('d');

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

