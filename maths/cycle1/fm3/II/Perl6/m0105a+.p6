#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :exe05a2, :examples;
use ppcm;
use irreducible-fraction;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0105a+.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'Les fractions 1/2, 2/3 et 3/4 sont irréductibles.';

    my $ppcm = PPCM.new(
        t => $t,
        integer1 => 2,
        integer2 => 3,
    );
    my Int $PPCM = $ppcm.by-prime-factors();
    my Int $lastp = $PPCM;
    $t.tput: "PPCM de 2 et 3 = $PPCM";
    $ppcm.integer1 = $PPCM;
    $ppcm.integer2 = 4;
    $PPCM = $ppcm.by-prime-factors();
    $t.tput: "PPCM de $lastp et 4 = $PPCM";
    $lastp = $PPCM;
    $ppcm.integer1 = $PPCM;
    $ppcm.integer2 = 5;
    $PPCM = $ppcm.by-prime-factors();
    $t.tput: "PPCM de $lastp et 5 = $PPCM";
    $lastp = $PPCM;
    $ppcm.integer1 = $PPCM;
    $ppcm.integer2 = 6;
    $PPCM = $ppcm.by-prime-factors();
    $t.tput: "PPCM de $lastp et 6 = $PPCM";
    $t.tput: "PPCM de 2, 3, 4, 5, 6 = $PPCM";

    my Int $a = 1 * $PPCM div 2;
    my Int $b = 2 * $PPCM div 3;
    my Int $c = 3 * $PPCM div 4;
    my Int $d = 4 * $PPCM div 5;
    my Int $e = 5 * $PPCM div 6;
    my $numerator = $a+$b+$c+$d+$e;
    $t.tprint: "Simplification : ";
    $t.tput: "$numerator/$PPCM.";

    my $irreducible = IrreducibleFraction.new(
        t => $t,
        numerator => $numerator,
        denominator => $PPCM,
    );
    my Pair $P = $irreducible.reduce-fraction-with-euclide-algorithm();

    $t.closefile = True;
    $t.tput: '';
}

exercise_05a2();
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

