#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe11;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 1024,
        integer2 => 864,
    );
    my Int $p = $pgcd.factorization_algorithm();
}

exercise_11();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

