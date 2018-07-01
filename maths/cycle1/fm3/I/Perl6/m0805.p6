#!/usr/bin/env perl6

use v6;
use corrective;
use method08 :methodwording, :exe05, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 13692,
        integer2 => 6357,
    );
    $pgcd.euclide_algorithm();
}

exercise_05();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
do-put-up-correct-version();
answering();

