#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method11 :methodwording, :exe01e, :examples;
use irreducible-fraction;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1101e.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $irreducible = IrreducibleFraction.new(
        t => $t,
        numerator => 644,
        denominator => 294,
    );
    $irreducible.reduce-fraction-with-subtraction-algorithm();

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_01e();
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

