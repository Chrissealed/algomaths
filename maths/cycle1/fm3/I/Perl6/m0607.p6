#!/usr/bin/env perl6

use v6;
use corrective;
use teeput;
use method06 :methodwording, :exe07, :examples;
use pgcd;

sub answering {
    class T does Tput {}
    my $t = T.new(
        filepath => 'output/m0607.txt',
        filemode => ':a',
        writefile => True,
        closefile => False,
    );
    $t.tput: 'a.';
    my $pgcd = PGCD.new(
        t => $t,
        integer1 => 165,
        integer2 => 132,
    );
    $pgcd.subtraction_algorithm();

    $t.tprint: "\n";
    $t.tput: 'b.';
    $pgcd.integer1 = 330;
    $pgcd.integer2 = 264;
    $pgcd.subtraction_algorithm();

    $t.tprint: "\n";
    $t.tput: 'c.';
    $pgcd.integer1 = 495;
    $pgcd.integer2 = 396;
    $pgcd.subtraction_algorithm();
    
    $t.tprint: "\n";
    $t.tput: 'd.';
    $t.tput: q:to/EOM/;
On remarque que 66 = 2 x 33 alors PGCD(330 ; 264) = 2 x PGCD(165 ; 132)
et comme 99 = 3 x 33 alors PGCD(495 ; 396) = 3 x PGCD(165 ; 132).
330 = 2 x 165 et 264 = 2 x 132.
495 = 3 x 165 et 396 = 3 x 132.
Soit PGCD(2 x 165 ; 2 x 132) = 2 x PGCD(165 ; 132)
     PGCD(3 x 165 ; 3 x 132) = 3 x PGCD(165 ; 132)
EOM

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

