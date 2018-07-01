#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe01b, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 24,
        integer2 => 84,
    );
    my Int $p = $pgcd.factorization_algorithm();
}

exercise_01b();
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

