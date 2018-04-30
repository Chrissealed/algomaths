#!/usr/bin/env perl6

use v6;
use corrective;
use method07 :methodwording, :exe05;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 2037,
        integer2 => 454,
    );
    $pgcd.euclide_algorithm();
}

exercise_05();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

