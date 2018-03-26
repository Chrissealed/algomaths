use corrective;
use method07 :methodwording, :exe07;
use pgcd :euclidealgo;

sub answering {
    say 'a';
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'euclide_algorithm'
        dividend => 36,
        divisor => 20,
    );
    $pgcd.euclide_algorithm();

    say();
    $pgcd.dividend = 108;
    $pgcd.divisor = 60;
    $pgcd.euclide_algorithm();

    say q:to/EOM/;

b.
108 est le triple de 36; 60 est le triple de 20.
On a PGCD(108; 60) = #{result2} et PGCD(36 ; 20) = #{result1} et #{result2} est le triple de #{result1};
Le PGCD de 108 et 60 est donc le triple du PGCD de 36 et 20 :
PGCD(108 ; 60) = 3 x PGCD(36 ; 20).
EOM
}

exercise_07();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

