use corrective;
use method10 :methodwording, :exe09;
use are-prime;

sub answering {
    my $prime = ArePrime.new(
        integer1 => 5167,
        integer2 => 2277,
        # Pour construire la classe, pour la méthode 'euclide_algorithm'
        subtract-or-euclide-algo => ':',
    );
    my $div = $prime.have-common-divisor();
}

exercise_09();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

