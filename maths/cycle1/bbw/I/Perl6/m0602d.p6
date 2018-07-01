#!/usr/bin/env perl6

use v6;
use corrective;
use method06 :methodwording, :exe02d, :examples;
use integer-divisors-listing;

sub answering {
    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '@',
    );
    my @a = $divisors-listing.list-divisors(561);
    say @a;
    say();
}

exercise_02d();
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

