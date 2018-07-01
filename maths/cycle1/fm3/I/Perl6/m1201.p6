#!/usr/bin/env perl6

use v6;
use corrective;
use method12 :methodwording, :exe01, :examples;
use pgcd;

sub answering {
    say "a. Il faut changer d'unité pour donner les dimensions de la planche avec";
    say "des nombres entiers : 1,62m = 162cm et 0,90m = 90cm.";
    say "Les carrés doivent être placés un nombre entier de fois dans la longueur de 162cm";
    say "et la largeur de 90cm, comme il n'y a pas de perte et qu'il faut des carrés tous";
    say "identiques, la longueur d'un carré doit être un diviseur de 162 et de 90.";
    say "De plus les carrés doivent être les plus grands possibles donc la longueur";
    say "du côté d'un carré est le PGCD de 162 et de 90.";
    say "En utilisant l'algorithme d'Euclide, on a :";
    say();
    my $pgcd = PGCD.new(
        integer1 => 162,
        integer2 => 90,
    );
    my Int $p = $pgcd.euclide_algorithm();
    say "La longueur du côté d'un carré est $p cm.";
    say();
    my Int $n1 = 162 div $p;
    my Int $n2 = 90 div $p;
    say "b. 162 = $p × $n1 et 90 = $p × $n2";
    say "L'apprenti menuisier obtiendra $n1 carrés dans la longueur";
    say "et $n2 carrés dans la largeur soit ", $n1 * $n2, " carrés."; 
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

