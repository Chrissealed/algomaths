#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe05b, :examples;
use integer-divisors-listing;


sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0305+.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my Int $pupils = 32;
    my %h;
    my $divisors-listing = IntegerDivisorsListing.new(
        t => $t,
        array-or-hash => '%',
    );
    %h = $divisors-listing.list-divisors($pupils);
    $t.tsay: %h;
    $t.tprint: "\n";
    $t.tput: "Les possibilités sont :";
    for %h.sort(*.key.Int)>>.kv -> ($k, $v) {
        $t.tput: "$k groupes de $v élèves." if ($k != 1 && $k != 32);
    }

    $t.closefile = True;
    $t.tput: '';
}

exercise_05b();
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

