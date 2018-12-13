#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :examples;
use method02 :methodwording, :examples;
use method04 :methodwording, :exe01, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m010204a.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "1°) Le nombre de tartelettes doit diviser le nombre de framboises (411)";
    $t.tput: "et le nombre de fraises (685) et doit être le plus grand possible :";
    $t.tput: "c'est exactement PGCD(411 ; 685).";
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 411,
        integer2 => 685,
    );
    my Int $p = $pgcd.euclide_algorithm();
    $t.tput: "On a après les calculs : PGCD(411 ; 685) = $p.";
    $t.tput: "Le nombre de tartelettes est donc $p.";
    my Int $n1 = 411 div $p;
    my Int $n2 = 685 div $p;
    $t.tput: "2°) On a 411 ÷ $p = $n1 et 685 ÷ $p = $n2.";
    $t.tput: "Il y aura donc $n1 framboises et $n2 fraises par tartelette.";

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_01();
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

