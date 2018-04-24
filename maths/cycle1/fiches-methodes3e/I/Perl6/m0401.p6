#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe01;
use integer-divisors-listing;
use common-arrays-elements;

sub answering {
    my Int $n1 = 90;
    my Int $n2 = 126;
    my (@a, @b, @c) = ();

    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '@',
    );
    say "Diviseurs de $n1 :";
    @a = $divisors-listing.list-divisors($n1);
    say "Diviseurs de $n2 :";
    @b = $divisors-listing.list-divisors($n2);

    @c = common-arrays-elements(@a, @b);
    say "Les diviseurs communs à $n1 et $n2 sont :";
    say @c;
    say "Le PGCD de $n1 et $n2 est ", @c[@c.end], ".";
}

exercise_01();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

