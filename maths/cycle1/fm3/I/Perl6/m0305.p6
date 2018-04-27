#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe05;
use integer-divisors-listing;


sub answering {
    my Int $pupils = 32;
    my @a;
    my $divisors-listing = IntegerDivisorsListing.new(
        array-or-hash => '@',
    );
    @a = $divisors-listing.list-divisors($pupils);
    say @a;
    say "Les possibilités sont :";
    while (@a.elems > 2) {
        # Eliminer le premier élément du tableau (1) et le dernier (32)
        @a.shift;
        @a.pop;
        say @a[0], " groupes de ", @a[*-1], " élèves.";
        say @a[*-1], " groupes de ", @a[0], " élèves.";
        # Equivalent à suivants sauf retour entre parenthèses.
        #say @a.head, " groupes de ", @a.tail, " élèves.";
        #say @a.tail, " groupes de ", @a.head, " élèves.";
    }
}

exercise_05();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version;
answering();

