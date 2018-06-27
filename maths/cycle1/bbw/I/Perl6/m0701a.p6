#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe01a, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 12,
        integer2 => 30,
    );
    my Int $p = $pgcd.factorization_algorithm();
}

exercise_01a();
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

