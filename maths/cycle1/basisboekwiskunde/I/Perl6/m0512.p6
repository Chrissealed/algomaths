use corrective;
use method05 :methodwording, :exe12;
use prime-factors;

sub answering {
    class P does PrimeFactors {}
    my $prime = P.new();
    my Int @a = ();
    my %p = $prime.breakdown(676);
    say();
}

exercise_12();
my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

