#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe03, :examples;
use integer-divisors-listing;
use common-arrays-elements;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0403.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my Int $n1 = 105;
    my Int $n2 = 175;
    my (@a, @b, @c) = ();

    my $divisors-listing = IntegerDivisorsListing.new(
        t => $t,
        array-or-hash => '@',
    );
    $t.tput: "Diviseurs de $n1 :";
    @a = $divisors-listing.list-divisors($n1);
    $t.tput: "Diviseurs de $n2 :";
    @b = $divisors-listing.list-divisors($n2);

    @c = common-arrays-elements(@a, @b);
    $t.tput: "Les diviseurs communs à $n1 et $n2 sont :";
    $t.tsay: @c;
    $t.tput: "Le PGCD de $n1 et $n2 est {@c[@c.end]}.";

    $t.closefile = True;
    $t.tprint: "\n";
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

