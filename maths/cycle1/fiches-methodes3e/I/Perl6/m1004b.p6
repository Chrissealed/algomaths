use corrective;
use method10 :methodwording, :exe04;
use are-prime;

sub answering {
    my $prime = ArePrime.new(
        integer1 => 174702,
        integer2 => 119115,
        # Pour construire la classe CommonDivisorsListing
        # pour utiliser la méthode 'list-divisors'
        array-or-hash => '@',
    );
    my @p = $prime.have-common-divisors();
    say @p;
}

exercise_04();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

