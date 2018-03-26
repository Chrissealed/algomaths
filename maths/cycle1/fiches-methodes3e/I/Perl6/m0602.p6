use corrective;
use method06 :methodwording, :exe02;
use pgcd :subtractalgo;

sub answering {
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'subtraction algorithm'
        integer1 => 25_333_333_344,
        integer2 => 14_777_777_784,
    );
    $pgcd.subtraction_algorithm();
}

exercise_02();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

