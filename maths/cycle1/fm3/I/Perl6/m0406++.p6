#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method04 :methodwording, :exe06c, :examples;
use pgcd;

my Int ($int1, $int2) = 1;
my Str ($strint1, $strint2) = "";
sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0406++.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    do-put-up-correct-version();
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'divisors-listing_algorithm()'
        t => $t,
        integer1 => $int1,
        integer2 => $int2,
    );
    $pgcd.divisors-listing_algorithm();

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_06c();
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

