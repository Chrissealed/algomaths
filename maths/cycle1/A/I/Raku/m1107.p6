#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method11 :methodwording, :exe07, :examples;
use irreducible-fraction;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m1107.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: "a. On calcule PGCD(1272 ; 901) et PGCD(1464 ; 1037) par l'algorithme d'Euclide.";
    $t.tput: "b. Si on divise le numérateur et le dénominateur d'une fraction par leur PGCD,";
    $t.tput: "alors on obtient une fraction irréductible égale à la fraction donnée.";
    $t.tprint: "\n";
    my $irreducible = IrreducibleFraction.new(
        t => $t,
        numerator => 1272,
        denominator => 901,
    );
    my Pair $pair = $irreducible.reduce-fraction-with-euclide-algorithm();
    $t.tprint: "\n";
    $irreducible = IrreducibleFraction.new(
        t => $t,
        numerator => 1464,
        denominator => 1037,
    );
    $pair = $irreducible.reduce-fraction-with-euclide-algorithm();
    $t.tprint: "\n";
    $t.tput: 'c.';
    $t.tput: "EB/EC = 9,01/12,72 = 901/1272 = 17/24 et EA/ED = 10,37/14,64 = 1037/1464 = 17/24";
    $t.tput: "donc EB/EC = EA/ED.";
    $t.tput: "Les points B, E et C sont alignés dans le même ordre que les points A, E et D";
    $t.tput: "et EB/EC = EA/ED donc les droites (AB) et (CD) sont parallèles";
    $t.tput: "d'après la réciproque de la propriété de Thalès.";

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

