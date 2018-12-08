#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe04c, :examples;
use integer-divisors-listing;

my $strint = '';
my $int = 0;
sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0304++.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    do-put-up-correct-version();
    my $divisors-listing = IntegerDivisorsListing.new(
        t => $t,
        array-or-hash => '%',
    );
    my %h;
    %h = $divisors-listing.list-divisors(Int($strint));
    $t.tsay: %h;

    $t.closefile = True;
    $t.tput: '';
}

exercise_04c();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
loop {
    $strint = prompt "Saisissez un entier positif non nul (0 pour finir) : ";
    last if $strint eq '0' || $strint eq '';
    try {
        $int = Int($strint);
    }
    if $! {
        say "Saisie invalide !";
        $! = Any;
        redo
    }
    if ($int < 0) {
        say "Saisie invalide !";
        redo;
    }
    answering();
}

