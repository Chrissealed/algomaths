#!/usr/bin/env perl6

use v6;
use corrective;
use method06 :methodwording, :exe01;
use integer-divisors-listing;

sub answering {
    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '@',
    );
    my @a = $divisors-listing.list-divisors(12);
    say @a;
    say();
}

exercise_01();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

