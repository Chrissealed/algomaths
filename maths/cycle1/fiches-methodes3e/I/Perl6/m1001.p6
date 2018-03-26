use corrective;
use method10 :methodwording, :exe01;
use are-prime;

sub answering {
    my $prime = ArePrime.new(
        integer1 => 4664,
        integer2 => 2915,
        # Pour construire la classe, pour la méthode 'subtraction_algorithm'
        subtract-or-euclide-algo => '_',
    );
    my $div = $prime.have-common-divisor();
}

exercise_01();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

