#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe02c, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 90,
        integer2 => 196,
    );
    my Int $p = $pgcd.factorization_algorithm();
}

exercise_02c();
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

