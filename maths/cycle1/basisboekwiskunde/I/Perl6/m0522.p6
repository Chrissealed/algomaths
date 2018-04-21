#!/usr/bin/env perl6

use v6;
use corrective;
use method05 :methodwording, :exe22;
use prime-factors;

sub answering {
    class P does PrimeFactors {}
    my $prime = P.new();
    my %p = $prime.breakdown(2001);
    say();
}

exercise_22();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

