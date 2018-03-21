use corrective;
use method05 :methodwording, :exe01;
use prime-factors;

sub answering {
    class P does PrimeFactors {}
    my $prime = P.new();
    my %p = $prime.breakdown(24);
    # postfix ». / postfix >>.
    # Hyper method call operator. Will call a method on all elements of a List out of order
    # and return the list of return values in order
    for %p.sort(*.key.Int).reverse>>.kv -> ($k, $v) {
         "$k\t=>\t$v".say;
    }
    say();
    %p = $prime.breakdown(72);
    for %p.sort(*.key.Int).reverse>>.kv -> ($k, $v) {
         "$k\t=>\t$v".say;
    }
    say();
    %p = $prime.breakdown(250);
    for %p.sort(*.key.Int).reverse>>.kv -> ($k, $v) {
         "$k\t=>\t$v".say;
    }
    say();
    %p = $prime.breakdown(96);
    for %p.sort(*.key.Int).reverse>>.kv -> ($k, $v) {
         "$k\t=>\t$v".say;
    }
    say();
    %p = $prime.breakdown(98);
    for %p.sort(*.key.Int).reverse>>.kv -> ($k, $v) {
         "$k\t=>\t$v".say;
    }
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

