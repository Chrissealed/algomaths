use corrective;
use method10 :methodwording, :exe08;
use are-prime;

sub answering {
    my $prime = ArePrime.new(
        integer1 => 121,
        integer2 => 450,
        # Pour construire la classe CommonDivisorsListing
        # pour utiliser la méthode 'list-divisors'
        array-or-hash => '@',
    );
    my @p = $prime.have-common-divisors();
    say @p;
    say "On constate en effet que 121 a pour seuls diviseurs 1, 11 et 121;";
    say "d'autre part 11 et 121 ne sont pas des diviseurs de 450,";
    say "autrement dit 1 est leur seul diviseur commun,";
    say "donc ces nombres sont premiers entre eux.";
}

exercise_08();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

