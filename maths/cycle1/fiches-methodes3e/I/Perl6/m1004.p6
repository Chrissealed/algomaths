use corrective;
use method10 :methodwording, :exe04;
use are-prime;

sub answering {
    my $prime = ArePrime.new(
        integer1 => 174702,
        integer2 => 119115,
        # Pour construire la classe, pour la méthode 'euclide_algorithm'
        subtract-or-euclide-algo => ':',
    );
    my $div = $prime.have-common-divisor();
}

exercise_04();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

