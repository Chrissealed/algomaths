#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe02;
use integer-divisors-listing-array;

sub answering {
    my $divisors-listing = IntegerDivisorsListingA.new;
    my @a;
    @a = $divisors-listing.list-divisors(36);
    say @a;
    say "On remarque que le nombre de diviseurs est impair puisque nous avons un carré parfait.";
}

exercise_02();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

