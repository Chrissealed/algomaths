#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe06d, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0106d.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );

    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 21 => 2121,
        reduce-fraction1 => True,
        nudepair2 => 55 => 44,
        reduce-fraction2 => True,
    );
    my Pair $P = $fraction.calculate-fractions('subtract');

    $t.closefile = True;
    $t.tput: '';
}

exercise_06d();
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

