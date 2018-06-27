#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe04d, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 1960,
        integer2 => 5880,
    );
    my Int $p = $pgcd.factorization_algorithm();
}

exercise_04d();
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

