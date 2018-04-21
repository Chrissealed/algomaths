#!/usr/bin/env perl6

use v6;
use corrective;
use method06 :methodwording, :exe09;
use integer-divisors-listing;

sub answering {
    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '@',
    );
    my @a = $divisors-listing.list-divisors(561);
    say @a;
    say();
}

exercise_09();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

