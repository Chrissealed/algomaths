#!/usr/bin/env perl6

use v6;
use corrective;
use method06 :methodwording, :exe06, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'subtraction algorithm'
        integer1 => 108_777,
        integer2 => 61_206,
    );
    $pgcd.subtraction_algorithm();
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

