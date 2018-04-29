#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe10;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 288,
        integer2 => 168,
    );
    my Int $p = $pgcd.factorization_algorithm();
}

exercise_10();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

