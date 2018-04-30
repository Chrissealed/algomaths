#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe06;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 2940,
        integer2 => 147,
    );
    say 'a';
    $pgcd.euclide_algorithm();
    say q:to/EOM/;

b.
On remarque qu'une seule division euclidienne suffit pour trouver le PGCD
de 2940 et 147. Elle montre que 2940 est un multiple de 147 (2940 = 147 x 20);
on peut utiliser la propriété :
a et b désignant deux entiers non nuls, si a est un multiple de b, alors
PGCD(a ; b) = b.
EOM
}

exercise_06();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

