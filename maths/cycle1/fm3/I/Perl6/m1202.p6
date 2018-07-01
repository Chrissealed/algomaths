#!/usr/bin/env perl6

use v6;
use corrective;
use method12 :methodwording, :exe02, :examples;
use pgcd;

sub answering {
    say "a. Le sorcier confiseur veut utiliser les 1620 serpents glacés et en avoir";
    say "le même nombre dans chaque paquet donc le nombre de paquets est un diviseur de 1620.";
    say "De même le sorcier confiseur veut utiliser les 2376 dragées surprises et en avoir";
    say "le même nombre dans chaque paquet donc le nombre de paquets est un diviseur de 2376.";
    say "On en déduit que le nombre de paquets doit être un diviseur commun de 1620 et de 2376,";
    say "or ce sorcier confiseur veut obtenir le nombre maximal de paquets donc ce dernier";
    say "est le plus grand diviseur commun de 1620 et de 2376.";
    say "Calculons le PGCD de 1620 et de 2376 par l'algorithme d'Euclide.";
    say();
    my $pgcd = PGCD.new(
        integer1 => 1620,
        integer2 => 2376,
    );
    my Int $p = $pgcd.euclide_algorithm();
    say "Le sorcier confiseur peut faire $p paquets au maximum.";
    say();
    say "b. Calculons le nombre de serpents glacés et de dragées surprises dans chaque paquet :";
    my Int $n1 = 1620 div $p;
    my Int $n2 = 2376 div $p;
    say "1620 = $p × $n1 et 2376 = $p × $n2.";
    say "Dans chaque paquet il y aura $n1 serpents glacés et $n2 dragées surprises.";
    my Real $x =  0.50 * $n1 + 0.30 * $n2;
    say "0,50 × $n1 + 0,30 × $n2 = $x.";
    my Str $s = $x.base(10, 2);
    say "Le prix d'un paquet de dragées surprises et de serpents glacés est de $s poudors.";
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

