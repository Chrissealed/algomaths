#!/usr/bin/env perl6

use v6;
use corrective;
use method08 :methodwording, :exe03;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 2014,
        integer2 => 1515,
    );
    $pgcd.euclide_algorithm();
}

exercise_03();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

