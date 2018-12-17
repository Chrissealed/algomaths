#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe02d, :examples;
use integer-divisors-listing;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0602d.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $divisors-listing = IntegerDivisorsListing.new(
        t => $t,
        array-or-hash => '@',
    );
    my @a = $divisors-listing.list-divisors(561);
    $t.tsay: @a;
    $t.closefile = True;
    $t.tprint: "\n";
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

