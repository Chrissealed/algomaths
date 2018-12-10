#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method08 :methodwording, :exe07, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0807.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 108777,
        integer2 => 61206,
    );
    $t.tput: 'a.';
    $pgcd.euclide_algorithm();

    $t.tprint: "\n";
    $t.tput: 'b.';
    $pgcd.integer1 = 108777;
    $pgcd.integer2 = 61206;
    $pgcd.subtraction_algorithm();

    $t.tprint: "\n";
    $t.tput: "Pour déterminer le PGCD de 108777 et 61206 par l'algorithme d'Euclide";
    $t.tput: "à l'aide d'un tableur il faut 5 lignes de calcul tandis que par l'algorithme";
    $t.tput: "des soustractions à l'aide d'un tableur (méthode 6, exercice 6) il en faut 29.";
    $t.tput: "La détermination du PGCD de 108777 et 61206 est plus courte par l'algorithme d'Euclide.";

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_07();
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

