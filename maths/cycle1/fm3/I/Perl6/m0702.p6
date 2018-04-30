#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe02;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 988,
        integer2 => 363,
    );
    $pgcd.euclide_algorithm();
}

exercise_02();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

