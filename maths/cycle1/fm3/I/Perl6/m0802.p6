#!/usr/bin/env perl6

use v6;
use corrective;
use method08 :methodwording, :exe02, :examples;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 2_130_071_799,
        integer2 => 789_801_903,
    );
    $pgcd.euclide_algorithm();
}

exercise_02();
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

