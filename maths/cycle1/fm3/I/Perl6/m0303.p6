#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe03, :examples;
use integer-divisors-listing-array;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0303.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $divisors-listing = IntegerDivisorsListingA.new(
        t => $t,
    );
    my @a = $divisors-listing.list-divisors(257);
    $t.tput: "@a[]"; 

    $t.closefile = True;
    $t.tput: '';
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

