#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method12 :methodwording, :exe03, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1203.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: q:to/EOM/;
a. Comme chaque candidat doit avoir le même nombre de questions à réponse Vrai
et comme les 147 questions à réponse Vrai doivent être utilisées,
le nombre de candidats doit être un diviseur de 147.
De même chaque candidat doivent avoir le même nombre de questions à réponse Faux
et les 105 questions à réponse Faux doivent être utilisées,
le nombre de candidats doit être un diviseur de 105.
Le nombre de candidats doit être un diviseur à la fois de 147 et 105
donc un diviseur commun de 147 et 105, or l'animateur veut obtenir le nombre
maximal de candidats donc ce nombre est le plus grand diviseur commun de 147 et de 105.
Calculons le PGCD de 147 et de 105 par l'algorithme d'Euclide.

EOM

    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 147,
        integer2 => 105,
    );
    my Int $p = $pgcd.euclide_algorithm();
    $t.tput: "$p candidats au maximum pourront participer au jeu.";
    $t.tprint: "\n";
    $t.tput: 'b.';
    my Int $n1 = 147 div $p;
    my Int $n2 = 105 div $p;
    $t.tput: "147 = $p × $n1 et 105 = $p × $n2.";
    $t.tput: "Chaque candidat aura $n1 questions à réponse Vrai et $n2 questions à réponse Faux.";

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_03();
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

