#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe06c, :examples;
use operations-on-fractions;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0106c.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );

    my $fraction = OperationsOnFractions.new(
        t => $t,
        nudepair1 => 15 => 25,
        reduce-fraction1 => True,
        nudepair2 => 12 => 16,
        reduce-fraction2 => True,
        nudepair3 => 7 => 20,
        reduce-fraction3 => True,
    );
    my Pair $P = $fraction.calculate-fractions('−+');

    $t.closefile = True;
    $t.tput: '';
}

exercise_06c();
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

