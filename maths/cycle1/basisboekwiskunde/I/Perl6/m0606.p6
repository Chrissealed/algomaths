#!/usr/bin/env perl6

use v6;
use corrective;
use method06 :methodwording, :exe06;
use integer-divisors-listing;

sub answering {
    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '@',
    );
    my @a = $divisors-listing.list-divisors(72);
    say @a;
    say();
}

exercise_06();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

