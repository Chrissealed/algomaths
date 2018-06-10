#!/usr/bin/env perl6

use v6;
use corrective;
use method06 :methodwording, :exe04, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'subtraction algorithm'
        integer1 => 4092,
        integer2 => 1705,
    );
    $pgcd.subtraction_algorithm();
}

exercise_04();
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

