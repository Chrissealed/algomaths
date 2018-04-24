#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe01;
use integer-divisors-listing;

sub answering {
    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '%',
    );
    my %h;
    %h = $divisors-listing.list-divisors(108);
    say %h;
}

exercise_01();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

