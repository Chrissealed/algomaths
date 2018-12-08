#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe06b, :examples;
use integer-divisors-listing;
use common-arrays-elements;

my Int ($int1, $int2) = 0;
my Str ($strint1, $strint2) = "";
sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0406+.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    do-put-up-correct-version();
    my (@a, @b, @c) = ();

    my $divisors-listing = IntegerDivisorsListing.new(
        t => $t,
        array-or-hash => '@',
    );
    $t.tput: "Diviseurs de $strint1 :";
    @a = $divisors-listing.list-divisors(Int($strint1));

    $t.tput: "Diviseurs de $strint2 :";
    @b = $divisors-listing.list-divisors(Int($strint2));

    @c = common-arrays-elements(@a, @b);
    $t.tput: "Les diviseurs communs à $strint1 et $strint2 sont :";
    $t.tsay: @c;
    $t.tput: "Le PGCD de $strint1 et $strint2 est {@c[@c.end]}.";

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_06b();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
LABELOUTLOOP:
loop {
    $strint1 = prompt "Donnez un premier entier positif (0 pour finir) : ";
    exit if $strint1 eq '0' || $strint1 eq '';
    try {
        $int1 = Int($strint1);
    }
    if $! {
        say "Saisie invalide !";
        $! = Any;
        redo;
    }
    if ($int1 < 0) {
        say "Saisie invalide !";
        redo;
    }
    loop {
        $strint2 = prompt "Donnez un deuxième entier positif : ";
        try {
            $int2 = Int($strint2);
        }
        if $! {
            say "Saisie invalide !";
            $! = Any;
            redo; 
        }
        if ($int2 < 0) {
           say "Saisie invalide !";
           redo;
        }
        answering;
        redo LABELOUTLOOP;
    }
}

