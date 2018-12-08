#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe06b, :examples;
use integer-divisors-listing;
use common-arrays-elements;

my ($int1, $int2) = 0;
my Str ($str1, $str2);
sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0306+.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    do-put-up-correct-version();
    my Int (@int_a, @int_b, @int_c) = ();

    my $divisors-listing = IntegerDivisorsListing.new(
        t => $t,
        array-or-hash => '@',
    );
    $t.tput: "Diviseurs de $str1 :";
    @int_a = $divisors-listing.list-divisors(Int($str1));

    $t.tput: "Diviseurs de $str2 :";
    @int_b = $divisors-listing.list-divisors(Int($str2));

    @int_a = @int_a.sort;
    @int_b = @int_b.sort;
    @int_c = common-arrays-elements(@int_a, @int_b);
    $t.tput: "Les diviseurs communs à $str1 et $str2 sont :";
    $t.tput: @int_c;

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
    $str1 = prompt "Donnez un premier entier positif (0 pour finir) : ";
    exit if $str1 eq '0' || $str1 eq '';
    try {
        $int1 = Int($str1);
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
        $str2 = prompt "Donnez un deuxième entier positif : ";
        try {
            $int2 = Int($str2);
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

