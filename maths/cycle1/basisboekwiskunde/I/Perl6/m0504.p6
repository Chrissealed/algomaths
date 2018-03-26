use corrective;
use method05 :methodwording, :exe04;
use prime-factors;

sub answering {
    class P does PrimeFactors {}
    my $prime = P.new();
    my %p = $prime.breakdown(255);
    say();
    %p = $prime.breakdown(441);
    say();
    %p = $prime.breakdown(722);
    say();
    %p = $prime.breakdown(432);
    say();
    %p = $prime.breakdown(985);
    say();
}

exercise_04();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

