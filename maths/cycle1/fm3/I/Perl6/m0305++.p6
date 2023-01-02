#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method03 :methodwording, :exe05c, :examples;
use integer-divisors-listing-hash;

my Str $pupils;
my Int $p;
sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0305++.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    do-put-up-correct-version;
    my %h;
    my $divisors-listing = IntegerDivisorsListingH.new(
        t => $t,
    );
    %h = $divisors-listing.list-divisors($p);
    $t.tprint: "\n";
    # Test pour un nombre premier
    if (%h.keys.elems != 1) {
        $t.tput: "Les possibilités sont :";
        for %h.sort(*.key.Int)>>.kv -> ($k, $v) {
            $t.tput: "$k groupes de $v élèves." if ($k != 1 && $k != $p);
        }
    }
    # Si nous n'avons à faire à un nombre premier
    else { $t.tput: "Aucune possibilité!" }

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_05c();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
loop {
    $pupils = prompt "Donnez un nombre d'élèves s.v.p. (0 pour finir) : ";
    last if $pupils eq '0' || $pupils eq '';
    try {
        $p = Int($pupils);
    }
    if $! {
        say "Saisie invalide !";
        $! = Any;
        redo
    }
    answering();
}

