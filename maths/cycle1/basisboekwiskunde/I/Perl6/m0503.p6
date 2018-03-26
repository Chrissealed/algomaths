use corrective;
use method05 :methodwording, :exe03;
use prime-factors;

sub answering {
    class P does PrimeFactors {}
    my $prime = P.new();
    my %p = $prime.breakdown(972);
    say();
    %p = $prime.breakdown(676);
    say();
    %p = $prime.breakdown(2025);
    say();
    %p = $prime.breakdown(1122);
    say();
    %p = $prime.breakdown(860);
    say();
}

exercise_03();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

