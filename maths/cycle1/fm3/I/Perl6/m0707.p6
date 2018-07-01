#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe07, :examples;
use pgcd;

sub answering {
    say 'a';
    my $pgcd = PGCD.new(
        integer1 => 36,
        integer2 => 20,
    );
    my $result1 = $pgcd.euclide_algorithm();

    say();
    $pgcd.integer1 = 108;
    $pgcd.integer2 = 60;
    my $result2 = $pgcd.euclide_algorithm();

    say qq:to/EOM/;

b.
108 est le triple de 36; 60 est le triple de 20.
On a PGCD(108; 60) = $result2 et PGCD(36 ; 20) = $result1 et $result2 est le triple de $result1;
Le PGCD de 108 et 60 est donc le triple du PGCD de 36 et 20 :
PGCD(108 ; 60) = 3 x PGCD(36 ; 20).
EOM
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

