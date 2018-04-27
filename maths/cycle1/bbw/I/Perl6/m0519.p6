#!/usr/bin/env perl6

use v6;
use corrective;
use method05 :methodwording, :exe19;
use prime-factors;

sub answering {
    class P does PrimeFactors {}
    my $prime = P.new();
    my %p = $prime.breakdown(432);
    say();
}

exercise_19();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

