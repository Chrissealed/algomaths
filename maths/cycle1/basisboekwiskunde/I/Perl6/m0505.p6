use corrective;
use method05 :methodwording, :exe05;
use prime-factors;

sub answering {
    class P does PrimeFactors {}
    my $prime = P.new();
    my Int @a = ();
    my %p = $prime.breakdown(2000);
    say();
    %p = $prime.breakdown(2001);
    say();
    %p = $prime.breakdown(2002);
    say();
    %p = $prime.breakdown(2003);
    say();
    %p = $prime.breakdown(2004);
    say();
}

exercise_05();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

