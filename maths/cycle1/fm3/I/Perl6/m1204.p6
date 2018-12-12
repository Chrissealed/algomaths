#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method12 :methodwording, :exe04, :examples;
use pgcd;
use integer-divisors-listing;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1204.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: q:to/EOM/;
a. Chaque équipe comprenant le même nombre de jeunes parmi les 144 qui participent
et le même nombre de séniors parmi les 54 qui participent, le nombre d'équipes
doit être un diviseur de 144 et de 54.
Comme le responsable souhaite constituer le plus grand nombre d'équipes,
alors ce dernier est le PGCD de 144 et 54.
Calculons le PGCD de 144 et de 54 par l'algorithme d'Euclide.
EOM

    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 144,
        integer2 => 54,
    );
    my Int $p = $pgcd.euclide_algorithm();
    $t.tput: "Le responsable du club pourra réaliser $p équipes.";
    my Int $n1 = 144 div $p;
    my Int $n2 = 54 div $p;
    $t.tput: "144 = $p × $n1 et 54 = $p × $n2.";
    $t.tput: "Il y aura $n1 jeunes et $n2 séniors dans chaque équipe.";
    say();
    
    $t.tput: "b. Le nombre d'équipes est un diviseur commun de 144 et 54 donc";
    $t.tput: "un diviseur de leur PGCD $p.";
    my $divisors-listing = IntegerDivisorsListing.new( t =>$t );
    my Int @a = $divisors-listing.list-divisors($p);
    $t.tput: "Les diviseurs de $p sont @a[].";
    my Int @b = ();
    for @a -> $elem {
        push @b, $elem if ($elem > 4 && $elem < 11);
    }
    my Int $i = 0;
    if (@b.elems > 0) {
        while ($i < @b.elems) {
            $t.tput: "Pour avoir un nombre d'équipes entre 5 et 10,";
            $t.tput: "le responsable peut constituer @b[$i] équipes.";
            $t.tput: "Composition des équipes :";
            $n1 = 144 div @b[$i]; $n2 = 54 div @b[$i];
            $t.tput: "144 = @b[$i] × $n1 et 54 = @b[$i] × $n2;";
            $t.tput: "avec @b[$i] équipes, il y aura $n1 jeunes et $n2 séniors par équipe.";
            $i++;
        }
    }
    else {
        say "Aucune équipe ne correspond aux critères!";
    }

    $t.closefile = True;
    $t.tprint: "\n";
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

