#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe14;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 1960,
        integer2 => 6370,
    );
    my Int @a = $pgcd.factorization_algorithm();
}

exercise_14();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

