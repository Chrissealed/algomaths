#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method12 :methodwording, :exe01, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1201.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "a. Il faut changer d'unité pour donner les dimensions de la planche avec";
    $t.tput: "des nombres entiers : 1,62m = 162cm et 0,90m = 90cm.";
    $t.tput: "Les carrés doivent être placés un nombre entier de fois dans la longueur de 162cm";
    $t.tput: "et la largeur de 90cm, comme il n'y a pas de perte et qu'il faut des carrés tous";
    $t.tput: "identiques, la longueur d'un carré doit être un diviseur de 162 et de 90.";
    $t.tput: "De plus les carrés doivent être les plus grands possibles donc la longueur";
    $t.tput: "du côté d'un carré est le PGCD de 162 et de 90.";
    $t.tput: "En utilisant l'algorithme d'Euclide, on a :";
    $t.tprint: "\n";
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 162,
        integer2 => 90,
    );
    my Int $p = $pgcd.euclide_algorithm();
    $t.tput: "La longueur du côté d'un carré est $p cm.";
    $t.tprint: "\n";
    my Int $n1 = 162 div $p;
    my Int $n2 = 90 div $p;
    $t.tput: "b. 162 = $p × $n1 et 90 = $p × $n2";
    $t.tput: "L'apprenti menuisier obtiendra $n1 carrés dans la longueur";
    $t.tput: "et $n2 carrés dans la largeur soit {$n1 * $n2} carrés."; 

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_01();
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

