#!/usr/bin/env perl6

use v6;
use corrective;
use method03 :methodwording, :exe03, :examples;

sub answering {
    exercise_03();
}

my Bool $boolean = True;
$boolean = do-put-up-method();
if $boolean {
    put-up-method;
}
$boolean = do-put-up-examples();
if $boolean {
    show-examples;
}
answering();

