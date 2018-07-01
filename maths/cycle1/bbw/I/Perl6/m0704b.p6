#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe04b, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 1721,
        integer2 => 1726,
    );
    my Int $p = $pgcd.factorization_algorithm();
}

exercise_04b();
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

