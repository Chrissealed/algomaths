#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe04;
use integer-divisors-listing-array;

sub answering {
    my $divisors-listing = IntegerDivisorsListingA.new;
    my @a;
    @a = $divisors-listing.list-divisors(300);
    say @a;
}

exercise_04();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

