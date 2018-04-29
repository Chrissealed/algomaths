#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe07;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 144,
        integer2 => 216,
    );
    my Int $p = $pgcd.factorization_algorithm();
}

exercise_07();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

