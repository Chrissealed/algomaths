#!/usr/bin/env perl6

use v6;
use corrective;
use method04 :methodwording, :exe01, :examples;

sub answering {
    exercise_01();
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

