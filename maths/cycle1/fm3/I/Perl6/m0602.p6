#!/usr/bin/env perl6

use v6;
use corrective;
use method06 :methodwording, :exe02, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        # Pour construire la classe PGCD pour la méthode 'subtraction algorithm'
        integer1 => 25_333_333_344,
        integer2 => 14_777_777_784,
    );
    $pgcd.subtraction_algorithm();
}

exercise_02();
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

