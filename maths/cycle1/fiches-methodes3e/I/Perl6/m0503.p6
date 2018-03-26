use corrective;
use method05 :methodwording, :exe03;
use pgcd :subtractalgo;

sub answering {
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'subtraction algorithm'
        integer1 => 189,
        integer2 => 55,
    );
    $pgcd.subtraction_algorithm();
}

exercise_03();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

