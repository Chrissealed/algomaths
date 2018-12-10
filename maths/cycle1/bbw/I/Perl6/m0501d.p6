#!/usr/bin/env perl6

use v6;
use corrective;
use method05 :methodwording, :exe01d, :examples;
use prime-factors;

sub answering {
    class P does PrimeFactors {}
    my $prime = P.new();
    my %p = $prime.breakdown(96);
    say();
}

exercise_01d();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();
