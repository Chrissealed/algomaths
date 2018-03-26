use corrective;
use method10 :methodwording, :exe06;
use are-prime;

sub answering {
    my $prime = ArePrime.new(
        integer1 => 77,
        integer2 => 1001,
        # Pour construire la classe CommonDivisorsListing
        # pour utiliser la méthode 'list-divisors'
        array-or-hash => '@',
    );
    my @p = $prime.have-common-divisors();
    say @p;
}

exercise_06();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

