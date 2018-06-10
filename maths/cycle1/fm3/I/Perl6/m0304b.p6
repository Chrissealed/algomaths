#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe04b, :examples;
use integer-divisors-listing-array;

my $strint = '';
my $int = 0;
sub answering {
    do-put-up-correct-version();
    my $divisors-listing = IntegerDivisorsListingA.new;
    my @a;
    @a = $divisors-listing.list-divisors($int);
    say @a;
}

exercise_04b();
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

