#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe02a, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 45,
        integer2 => 225,
    );
    my Int $p = $pgcd.factorization_algorithm();
}

exercise_02a();
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

