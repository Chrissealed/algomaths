#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method12 :methodwording, :exe02, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1202.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "a. Le sorcier confiseur veut utiliser les 1620 serpents glacés et en avoir";
    $t.tput: "le même nombre dans chaque paquet donc le nombre de paquets est un diviseur de 1620.";
    $t.tput: "De même le sorcier confiseur veut utiliser les 2376 dragées surprises et en avoir";
    $t.tput: "le même nombre dans chaque paquet donc le nombre de paquets est un diviseur de 2376.";
    $t.tput: "On en déduit que le nombre de paquets doit être un diviseur commun de 1620 et de 2376,";
    $t.tput: "or ce sorcier confiseur veut obtenir le nombre maximal de paquets donc ce dernier";
    $t.tput: "est le plus grand diviseur commun de 1620 et de 2376.";
    $t.tput: "Calculons le PGCD de 1620 et de 2376 par l'algorithme d'Euclide.";
    $t.tprint: "\n";
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 1620,
        integer2 => 2376,
    );
    my Int $p = $pgcd.euclide_algorithm();
    $t.tput: "Le sorcier confiseur peut faire $p paquets au maximum.";
    $t.tprint: "\n";
    $t.tput: "b. Calculons le nombre de serpents glacés et de dragées surprises dans chaque paquet :";
    my Int $n1 = 1620 div $p;
    my Int $n2 = 2376 div $p;
    $t.tput: "1620 = $p × $n1 et 2376 = $p × $n2.";
    $t.tput: "Dans chaque paquet il y aura $n1 serpents glacés et $n2 dragées surprises.";
    my Real $x =  0.50 * $n1 + 0.30 * $n2;
    $t.tput: "0,50 × $n1 + 0,30 × $n2 = $x.";
    my Str $s = $x.base(10, 2);
    $t.tput: "Le prix d'un paquet de dragées surprises et de serpents glacés est de $s poudors.";

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_02();
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

