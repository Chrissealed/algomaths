#!/usr/bin/env perl6

use v6;
use corrective;
use method01 :methodwording, :exe05a, :examples;
use ppcm;
use irreducible-fraction;

sub answering {
    my $ppcm = PPCM.new(
        integer1 => 2,
        integer2 => 3,
    );
    my Int $p = $ppcm.by-prime-factors();
    my Int $lastp = $p;
    say "PPCM de 2 et 3 = $p";
    $ppcm.integer1 = $p;
    $ppcm.integer2 = 4;
    $p = $ppcm.by-prime-factors();
    say "PPCM de $lastp et 4 = $p";
    $lastp = $p;
    $ppcm.integer1 = $p;
    $ppcm.integer2 = 5;
    $p = $ppcm.by-prime-factors();
    say "PPCM de $lastp et 5 = $p";
    $lastp = $p;
    $ppcm.integer1 = $p;
    $ppcm.integer2 = 6;
    $p = $ppcm.by-prime-factors();
    say "PPCM de $lastp et 6 = $p";
    say "PPCM de 2, 3, 4, 5, 6 = $p";

    my Int $a = 1 * $p div 2;
    my Int $b = 2 * $p div 3;
    my Int $c = 3 * $p div 4;
    my Int $d = 4 * $p div 5;
    my Int $e = 5 * $p div 6;
    my $f = $a+$b+$c+$d+$e;
    say "Simplification :";
    say "$f/$p";

    my $irreducible = IrreducibleFraction.new(
        numerator => $f,
        denominator => $p,
    );
    my Pair $P = $irreducible.reduce-fraction-with-euclide-algorithm();
}

exercise_05a();
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

