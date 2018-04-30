#!/usr/bin/env perl6

use v6;
use corrective;
use method08 :methodwording, :exe06;
use pgcd;

sub answering {
    my $pgcd = PGCD.new(
        integer1 => 86105,
        integer2 => 18234,
    );
    $pgcd.euclide_algorithm();
}

exercise_06();
my Bool $boolean = do-put-up-method();
if $boolean {
    put-up-method();
}
do-put-up-correct-version();
answering();

