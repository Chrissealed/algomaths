#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe02;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 24,
        integer2 => 84,
    );
    my Int $p = $pgcd.factorization_algorithm();
}

exercise_02();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

