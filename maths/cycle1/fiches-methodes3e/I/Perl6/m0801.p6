use corrective;
use method08 :methodwording, :exe01;
use pgcd :euclidealgo;

sub answering {
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'euclide_algorithm'
        dividend => 1287,
        divisor => 819,
    );
    $pgcd.euclide_algorithm();
}

exercise_01();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

