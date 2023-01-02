#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method11 :methodwording, :exe03, :examples;
use irreducible-fraction;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1103.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $irreducible = IrreducibleFraction.new(
        t => $t,
        numerator => 782,
        denominator => 690,
    );
    my Pair $pair1 = $irreducible.reduce-fraction-with-euclide-algorithm();
    $t.tprint: "\n";
    $irreducible = IrreducibleFraction.new(
        t => $t,
        numerator => 272,
        denominator => 510,
    );
    my Pair $pair2 = $irreducible.reduce-fraction-with-euclide-algorithm();
    $t.tprint: "\n";
    $t.tput: "F = 782/690 + 272/510, or 782/690 = {$pair1.key}/{$pair1.value}";
    $t.tput: "et 272/510 = {$pair2.key}/{$pair2.value}";
    $t.tput: "donc F = {$pair1.key} + {$pair2.key}/{$pair1.value}";
    $t.tprint: "\n";
    $irreducible = IrreducibleFraction.new(
        t => $t,
        numerator => $pair1.key + $pair2.key,
        denominator => $pair1.value,
    );
    my Pair $pair = $irreducible.reduce-fraction-with-factorization-algorithm();

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_03();
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

