use corrective;
use method05 :methodwording, :exe01;
use prime-factors;

sub answering {
    class P does PrimeFactors {}
    my $prime = P.new();
    my %p = $prime.breakdown(24);
    say();
    %p = $prime.breakdown(72);
    say();
    %p = $prime.breakdown(250);
    say();
    %p = $prime.breakdown(96);
    say();
    %p = $prime.breakdown(98);
    say();
}

exercise_01();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

