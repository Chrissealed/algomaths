#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method07 :methodwording, :exe06, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0706.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 2940,
        integer2 => 147,
    );
    $t.tput: 'a';
    $pgcd.euclide_algorithm();
    $t.tprint: q:to/EOM/;

b.
On remarque qu'une seule division euclidienne suffit pour trouver le PGCD
de 2940 et 147. Elle montre que 2940 est un multiple de 147 (2940 = 147 x 20);
on peut utiliser la propriété :
a et b désignant deux entiers non nuls, si a est un multiple de b, alors
PGCD(a ; b) = b.
EOM

    $t.closefile = True;
    $t.tprint: "\n";
}

exercise_06();
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

