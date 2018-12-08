#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe02b, :examples;
use integer-divisors-listing;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0302+.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $divisors-listing = IntegerDivisorsListing.new(
        t => $t,
        array-or-hash => '%',
    );
    my %h = $divisors-listing.list-divisors(36);
    for %h.kv -> $key, $val { $t.tprint: "$key => $val\n" }
    $t.tsay: "{%h.pairs}";

    $t.tput: "On remarque que le nombre de diviseurs est impair puisque nous avons un carré parfait.";

    $t.closefile = True;
    $t.tput: '';
}

exercise_02b();
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

