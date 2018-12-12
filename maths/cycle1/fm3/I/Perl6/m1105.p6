#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method11 :methodwording, :exe05, :examples;
use irreducible-fraction;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1105.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "a. 648 et 972 sont des nommbres pairs donc des nombres divisibles par 2";
    $t.tput: "donc leur PGCD n'est pas égal à 1 donc 648 et 972 ne sont pas premiers entre eux.";
    $t.tprint: "\n";
    $t.tput: 'b.';
    my $irreducible = IrreducibleFraction.new(
        t => $t,
        numerator => 648,
        denominator => 972,
    );
    my Pair $pair = $irreducible.reduce-fraction-with-euclide-algorithm();
    $t.tprint: "\n";
    $t.tput: 'c.';
    $t.tput: "√648 + √972 = √324×2 + √324×3";
    $t.tput: "√648 + √972 = √324 × √2 + √324 × √3 (chapitre 4 méthode 7)";
    $t.tput: "√648 + √972 = √324(√2 × √3) or √324 = 18";
    $t.tput: "on a donc bien √648 + √972 = 18(√2 + √3).";

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_05();
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

