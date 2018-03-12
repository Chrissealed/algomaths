use corrective;
use method10 :methodwording, :exe13;
use are-prime;

sub answering {
    my $prime = ArePrime.new(
        integer1 => 2929,
        integer2 => 10605,
    );
    my @div = $prime.have-common-divisors();
}

exercise_13();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

