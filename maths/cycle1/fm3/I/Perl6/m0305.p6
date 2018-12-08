#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe05, :examples;
use integer-divisors-listing;


sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0305.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my Int $pupils = 32;
    my @a;
    my $divisors-listing = IntegerDivisorsListing.new(
        t => $t,
        array-or-hash => '@',
    );
    @a = $divisors-listing.list-divisors($pupils);
    $t.tsay: @a;
    $t.tput: "Les possibilités sont :";
    while (@a.elems > 2) {
        # Eliminer le premier élément du tableau (1) et le dernier (32)
        @a.shift;
        @a.pop;
        $t.tsay: "@a[0] groupes de @a[*-1] élèves.";
        $t.tsay: "@a[*-1] groupes de @a[0] élèves.";
        # Equivalent à suivants sauf retour entre parenthèses.
        #say @a.head, " groupes de ", @a.tail, " élèves.";
        #say @a.tail, " groupes de ", @a.head, " élèves.";
    }

    $t.closefile = True;
    $t.tput: '';
}

exercise_05();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version;
answering();

