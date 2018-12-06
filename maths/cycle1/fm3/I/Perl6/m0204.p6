#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method02 :methodwording, :exe04, :examples;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0204.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my Int ($dividend, $divisor, $quotient, $remainder) = 0;
    $t.tput: "a.";
    $t.tput: "La première égalité ne traduit aucune division euclidienne";
    $t.tput: "parce que le reste est supérieur au diviseur,";
    $t.tput: "soit 21 > 18 et 21 > 15 mais cependant 18 × 15 + 21 = {48*15+21}.";

    $t.tput: "b.";
    $t.tput: "Cette égalité ne traduit pas la division euclidienne de 102 par 6";
    $t.tput: "car 6 est égal au diviseur et ne peut donc pas être le reste";
    $t.tput: "d'une division euclidienne par 6.";
    $t.tput: "Cependant cette égalité traduit la division euclidienne de 102 par 16 car";
    $t.tput: "6 est inférieur à 16;";
    if (Int(102/16) == 6) {
        $dividend = 102; $divisor = 16; $quotient = 6; $remainder = 6;
        $t.tput: "le dividende est $dividend, le diviseur $divisor, le quotient $quotient et le reste $remainder,";
        $t.tput: "on vérifie que 16 × 6 + 6 = {16 * 6 + 6}.";
    } else {
        $t.tput: "L'égalité ne convient pas.";
    }

    $t.tput: "c.";
    $t.tput: "Cette égalité traduit la division euclidienne de 142 par 8 car";
    $t.tput: "6 est inférieur à 8;";
    if (Int(142/17) == 8) {
        $dividend = 142; $divisor = 17; $quotient = 8; $remainder = 6;
        $t.tput: "le dividende est $dividend, le diviseur $divisor, le quotient $quotient et le reste $remainder,";
        $t.tput: "on vérifie que 8 × 17 + 6 = {8 * 17 + 6}.";
    } else {
        $t.tput: "L'égalité ne convient pas.";
    }
    $t.tput: "Cette égalité traduit aussi la division euclidienne de 142 par 17 car";
    $t.tput: "6 est inférieur à 17;";
    if (Int(142/8) == 17) {
        $dividend = 142; $divisor = 8; $quotient = 17; $remainder = 6;
        $t.tput: "le dividende est $dividend, le diviseur $divisor, le quotient $quotient et le reste $remainder,";
        $t.tput: "on vérifie que 17 × 8 + 6 = {17 * 8 + 6}.";
    } else {
        $t.tput: "L'égalité ne convient pas.";
    }

    $t.closefile = True;
    $t.tput: '';
}

exercise_04();
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

