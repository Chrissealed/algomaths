#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :examples;
use method02 :methodwording, :examples;
use method04 :methodwording, :exe02, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m010204b.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 540,
        integer2 => 300,
    );
    my Int $p = $pgcd.euclide_algorithm();
    $t.tput: "1°) On a (après calculs) PGCD(540 ; 300) = $p.";
    $t.tprint: "\n";
    $t.tput: "2°) a. Raisonnons en cm : 5,40 m = 540 cm et 3 m = 300 cm.";
    $t.tput: "Vu que l'on veut le moins de dalles possibles, il faut qu'elles soient les plus";
    $t.tput: "grandes possibles sachant que leur longueur (en cm) doit diviser 540 et 300";
    $t.tput: "(car on veut des dalles entières). Ce qu'on cherche, c'est donc PGCD(540 ; 300),";
    $t.tput: "c'est à dire $p ! Chaque dalle doit donc mesurer $p cm sur $p cm.";
    my Int $n1 = 540 div $p;
    my Int $n2 = 300 div $p;
    $t.tput: "b. On peut en mettre 540 ÷ $p = $n1 en longueur et 300 ÷ $p = $n2 en largeur,";
    $t.tput: "ce qui fait $n1 × $n2 = {$n1 * $n2} dalles !";

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_02();
my Bool $boolean = do-put-up-method(1);
if $boolean {
    put-up-method01();
}
$boolean = do-put-up-examples(1);
if $boolean {
    show-examples01;
}
$boolean = do-put-up-method(2);
if $boolean {
    put-up-method02();
}
$boolean = do-put-up-examples(2);
if $boolean {
    show-examples02;
}
$boolean = do-put-up-method(4);
if $boolean {
    put-up-method04();
}
$boolean = do-put-up-examples(4);
if $boolean {
    show-examples04;
}
do-put-up-correct-version();
answering();

