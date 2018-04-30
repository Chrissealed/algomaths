#!/usr/bin/env perl6

use v6;
use corrective;
use method09 :methodwording, :exe01;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        # Pour construire la classe 'IntegerDivisorsListing' (dont hérite PGCD)
        array-or-hash => '@',
        # Pour construire la classe 'PGCD', pour la méthode 'euclide_algorithm'
        integer1 => 1210,
        integer2 => 462,
    );
    my Int $p = $pgcd.euclide_algorithm();
    say();
    say "Liste des diviseurs de $p, PGCD de (", $pgcd.integer1, " ; ", $pgcd.integer2, ").";
    # Méthode héritée
    my @a = $pgcd.list-divisors($p);
    say "Les diviseurs communs à deux nombres sont les diviseurs de leur PGCD :";
    say @a;
}

exercise_01();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

