#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method09 :methodwording, :exe07, :examples;
use pgcd;
use integer-divisors-listing;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0907.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $pgcd = PGCD.new(
        t => $t,
        # Pour construire la classe 'PGCD', pour la méthode 'euclide_algorithm'
        integer1 => 2037,
        integer2 => 454,
    );
    my Int $p = $pgcd.euclide_algorithm();
    $t.tprint: "\n";
    $t.tput: "Liste des diviseurs de $p, PGCD de ({$pgcd.integer1} ; {$pgcd.integer2}) :";
    my $listing = IntegerDivisorsListing.new(
        t => $t,
    );
    my @a = $listing.list-divisors($p);
    $t.tput: "Les diviseurs communs à deux nombres sont les diviseurs de leur PGCD :";
    $t.tsay: @a;

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_07();
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

