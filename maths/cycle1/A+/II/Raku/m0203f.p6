#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :examples;
use method03 :methodwording, :exe01f, :examples;
use irreducible-fraction;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0203f.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $irreducible = IrreducibleFraction.new(
        t => $t,
        numerator => 675,
        denominator => 375,
    );
    $irreducible.reduce-fraction-with-euclide-algorithm();

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_01f();
my Bool $boolean = do-put-up-method(2);
if $boolean {
    put-up-method02();
}
$boolean = do-put-up-examples(2);
if $boolean {
    show-examples02;
}
$boolean = do-put-up-method(3);
if $boolean {
    put-up-method03();
}
$boolean = do-put-up-examples(3);
if $boolean {
    show-examples03;
}
do-put-up-correct-version();
answering();

