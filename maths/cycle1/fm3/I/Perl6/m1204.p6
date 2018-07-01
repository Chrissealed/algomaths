#!/usr/bin/env perl6

use v6;
use corrective;
use method12 :methodwording, :exe04, :examples;
use pgcd;
use integer-divisors-listing;

sub answering {
    say q:to/EOM/;
a. Chaque équipe comprenant le même nombre de jeunes parmi les 144 qui participent
et le même nombre de séniors parmi les 54 qui participent, le nombre d'équipes
doit être un diviseur de 144 et de 54.
Comme le responsable souhaite constituer le plus grand nombre d'équipes,
alors ce dernier est le PGCD de 144 et 54.
Calculons le PGCD de 144 et de 54 par l'algorithme d'Euclide.
EOM

    my $pgcd = PGCD.new(
        integer1 => 144,
        integer2 => 54,
    );
    my Int $p = $pgcd.euclide_algorithm();
    say "Le responsable du club pourra réaliser $p équipes.";
    my Int $n1 = 144 div $p;
    my Int $n2 = 54 div $p;
    say "144 = $p × $n1 et 54 = $p × $n2.";
    say "Il y aura $n1 jeunes et $n2 séniors dans chaque équipe.";
    say();
    
    say "b. Le nombre d'équipes est un diviseur commun de 144 et 54 donc";
    say "un diviseur de leur PGCD $p.";
    my $divisors-listing = IntegerDivisorsListing.new();
    my Int @a = $divisors-listing.list-divisors($p);
    say "Les diviseurs de $p sont @a[].";
    my Int @b = ();
    for @a -> $elem {
        push @b, $elem if ($elem > 4 && $elem < 11);
    }
    my Int $i = 0;
    if (@b.elems > 0) {
        while ($i < @b.elems) {
            say "Pour avoir un nombre d'équipes entre 5 et 10,";
            say "le responsable peut constituer @b[$i] équipes.";
            say "Composition des équipes :";
            $n1 = 144 div @b[$i]; $n2 = 54 div @b[$i];
            say "144 = @b[$i] × $n1 et 54 = @b[$i] × $n2;";
            say "avec @b[$i] équipes, il y aura $n1 jeunes et $n2 séniors par équipe.";
            $i++;
        }
    }
    else {
        say "Aucune équipe ne correspond aux critères!";
    }
}

exercise_04();
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

