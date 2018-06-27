#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe01e, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 34,
        integer2 => 85,
    );
    my Int $p = $pgcd.factorization_algorithm();
}

exercise_01e();
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

