use corrective;
use method05 :methodwording, :exe05;
use prime-factors;

sub answering {
    class P does PrimeFactors {}
    my $prime = P.new();
    my %p = $prime.breakdown(2000);
    # postfix ». / postfix >>.
    # Hyper method call operator. Will call a method on all elements of a List out of order
    # and return the list of return values in order
    for %p.sort(*.key.Int).reverse>>.kv -> ($k, $v) {
         "$k\t=>\t$v".say;
    }
    say();
    %p = $prime.breakdown(2001);
    for %p.sort(*.key.Int).reverse>>.kv -> ($k, $v) {
         "$k\t=>\t$v".say;
    }
    say();
    %p = $prime.breakdown(2002);
    for %p.sort(*.key.Int).reverse>>.kv -> ($k, $v) {
         "$k\t=>\t$v".say;
    }
    say();
    %p = $prime.breakdown(2003);
    for %p.sort(*.key.Int).reverse>>.kv -> ($k, $v) {
         "$k\t=>\t$v".say;
    }
    say();
    %p = $prime.breakdown(2004);
    for %p.sort(*.key.Int).reverse>>.kv -> ($k, $v) {
         "$k\t=>\t$v".say;
    }
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

