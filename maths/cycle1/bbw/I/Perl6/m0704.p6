#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe04;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 32,
        integer2 => 56,
    );
    my Int @a = $pgcd.factorization_algorithm();
}

exercise_04();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

