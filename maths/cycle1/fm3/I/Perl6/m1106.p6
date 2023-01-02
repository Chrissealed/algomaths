#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method11 :methodwording, :exe06, :examples;
use irreducible-fraction;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1106.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "a. Le numérateur et le dénominateur de A ne sont pas des nombres entiers";
    $t.tput: "   donc on ne peut pas déterminer leur PGCD.";
    $t.tprint: "\n";
    $t.tput: "b. A = 43,01/84,15 ; A = 43,01×100/84,15×100; A = 4301/8415.";
    $t.tprint: "\n";
    $t.tput: 'c.d.';
    my $irreducible = IrreducibleFraction.new(
        t => $t,
        numerator => 4301,
        denominator => 8415,
    );
    my Pair $pair = $irreducible.reduce-fraction-with-euclide-algorithm();

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_06();
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

