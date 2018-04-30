#!/usr/bin/env perl6

use v6;
use corrective;
use method08 :methodwording, :exe07;
use pgcd;

my $pgcd = PGCD.new();
sub answering {
    # Pour construire la classe PGCD pour la méthode 'euclide_algorithm'
    say 'a.';
    $pgcd.integer1 = 108777;
    $pgcd.integer2 = 61206;
    $pgcd.euclide_algorithm();

    say();
    say 'b.';
    $pgcd.integer1 = 108777;
    $pgcd.integer2 = 61206;
    $pgcd.subtraction_algorithm();

    say();
    say "Pour déterminer le PGCD de 108777 et 61206 par l'algorithme d'Euclide";
    say "à l'aide d'un tableur il faut 5 lignes de calcul tandis que par l'algorithme";
    say "des soustractions à l'aide d'un tableur (méthode 6, exercice 6) il en faut 29.";
    say "La détermination du PGCD de 108777 et 61206 est plus courte par l'algorithme d'Euclide.";
}

exercise_07();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

