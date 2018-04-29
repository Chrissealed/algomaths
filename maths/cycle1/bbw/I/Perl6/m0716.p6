#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe16;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 1243,
        integer2 => 1244,
    );
    my Int $p = $pgcd.factorization_algorithm();
}

exercise_16();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

