#!/usr/bin/env perl6

use v6;
use corrective;
use method11 :methodwording, :exe07, :examples;
use irreducible-fraction;

sub answering {
    say "a. On calcule PGCD(1272 ; 901) et PGCD(1464 ; 1037) par l'algorithme d'Euclide.";
    say "b. Si on divise le numérateur et le dénominateur d'une fraction par leur PGCD,";
    say "alors on obtient une fraction irréductible égale à la fraction donnée.";
    say();
    my $irreducible = IrreducibleFraction.new(
        numerator => 1272,
        denominator => 901,
    );
    my Pair $pair = $irreducible.reduce-fraction-with-euclide-algorithm();
    say();
    $irreducible = IrreducibleFraction.new(
        numerator => 1464,
        denominator => 1037,
    );
    $pair = $irreducible.reduce-fraction-with-euclide-algorithm();
    say();
    say 'c.';
    say "EB/EC = 9,01/12,72 = 901/1272 = 17/24 et EA/ED = 10,37/14,64 = 1037/1464 = 17/24";
    say "donc EB/EC = EA/ED.";
    say "Les points B, E et C sont alignés dans le même ordre que les points A, E et D";
    say "et EB/EC = EA/ED donc les droites (AB) et (CD) sont parallèles";
    say "d'après la réciproque de la propriété de Thalès.";
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

