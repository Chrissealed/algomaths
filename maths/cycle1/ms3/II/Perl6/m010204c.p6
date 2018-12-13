#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method01 :methodwording, :examples;
use method02 :methodwording, :examples;
use method04 :methodwording, :exe03, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m010204c.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 84,
        integer2 => 147,
    );
    my Int $p = $pgcd.euclide_algorithm();
    $t.tput: "1°) Le nombre de personnes cherché doit diviser 84 ainsi que 147 et être";
    $t.tput: "le plus grand possible : c'est bien sûr PGCD(84 ; 147).";
    $t.tput: "On trouve (après calcul) PGCD(84 ; 147) = $p.";
    $t.tput: "Ainsi $p personnes au maximum pourront bénéficier de ces friandises.";
    $t.tprint: "\n";
    my Int $n1 = 84 div $p;
    my Int $n2 = 147 div $p;
    $t.tput: "2°) Il y aura 84 ÷ $p = $n1 sucettes ainsi que 147 ÷ $p = $n2 bonbons par personne.";

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_03();
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

