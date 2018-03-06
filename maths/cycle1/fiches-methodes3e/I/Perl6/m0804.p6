use corrective;
use method08 :methodwording, :exe04;
use pgcd :euclidealgo;

sub answering {
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'euclide_algorithm'
        dividend => 126_871,
        divisor => 116_756,
    );
    $pgcd.euclide_algorithm();
}

exercise_04();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

