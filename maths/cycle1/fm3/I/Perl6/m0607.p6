#!/usr/bin/env perl6

use v6;
use corrective;
use method06 :methodwording, :exe07, :examples;
use pgcd;

sub answering {
    say 'a.';
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'subtraction algorithm'
        integer1 => 165,
        integer2 => 132,
    );
    $pgcd.subtraction_algorithm();

    say();
    say 'b.';
    $pgcd.integer1 = 330;
    $pgcd.integer2 = 264;
    $pgcd.subtraction_algorithm();

    say();
    say 'c.';
    $pgcd.integer1 = 495;
    $pgcd.integer2 = 396;
    $pgcd.subtraction_algorithm();
    
    say();
    say 'd.';
    say q:to/EOM/;
On remarque que 66 = 2 x 33 alors PGCD(330 ; 264) = 2 x PGCD(165 ; 132)
et comme 99 = 3 x 33 alors PGCD(495 ; 396) = 3 x PGCD(165 ; 132).
330 = 2 x 165 et 264 = 2 x 132.
495 = 3 x 165 et 396 = 3 x 132.
Soit PGCD(2 x 165 ; 2 x 132) = 2 x PGCD(165 ; 132)
     PGCD(3 x 165 ; 3 x 132) = 3 x PGCD(165 ; 132)
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

