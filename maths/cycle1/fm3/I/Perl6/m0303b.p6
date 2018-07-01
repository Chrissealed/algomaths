#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe03, :examples;
use integer-divisors-listing;

sub answering {
    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => 'hash',
    );
    my %h;
    %h = $divisors-listing.list-divisors(257);
    say %h; 
}

exercise_03();
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

