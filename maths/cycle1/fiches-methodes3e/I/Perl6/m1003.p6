use corrective;
use method10 :methodwording, :exe03;
use are-prime;

sub answering {
    my $prime = ArePrime.new(
        integer1 => 865,
        integer2 => 1540,
        # Pour construire la classe, pour la méthode 'euclide_algorithm'
        subtract-or-euclide-algo => ':',
    );
    my $div = $prime.have-common-divisor();
}

exercise_03();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

