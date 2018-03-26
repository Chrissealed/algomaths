use corrective;
use method09 :methodwording, :exe04;
use pgcd :euclidealgo;

sub answering {
    my $pgcd = PGCD.new(
        # Pour construire la classe 'IntegerDivisorsListing' (dont hérite PGCD)
        array-or-hash => '@',
        # Pour construire la classe 'PGCD', pour la méthode 'euclide_algorithm'
        dividend => 780,
        divisor => 504,
    );
    my Int $p = $pgcd.euclide_algorithm();
    say();
    say "Liste des diviseurs de $p, PGCD de (", $pgcd.dividend, " ; ", $pgcd.divisor, ").";
    # Méthode héritée
    my @a = $pgcd.list-divisors($p);
    say "Les diviseurs communs à deux nombres sont les diviseurs de leur PGCD :";
    say @a;
}

exercise_04();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

