use corrective;
use method05 :methodwording, :exe02;
use prime-factors;

sub answering {
    class P does PrimeFactors {}
    my $prime = P.new();
    my %p = $prime.breakdown(288);
    say();
    %p = $prime.breakdown(1024);
    say();
    %p = $prime.breakdown(315);
    say();
    %p = $prime.breakdown(396);
    say();
    %p = $prime.breakdown(1875);
    say();
}

exercise_02();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

